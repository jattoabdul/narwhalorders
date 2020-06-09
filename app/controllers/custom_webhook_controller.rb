# frozen_string_literal: true

class CustomWebhookController < ApplicationController
  include ShopifyApp::WebhookVerification

  def orders_create
    params.permit!
    webhook = webhook_params.to_h
    webhook = {
      id: webhook[:id],
      order_number: webhook[:order_number],
      customer: webhook[:customer],
      line_items: webhook[:line_items]
    }.to_json
    OrdersCreateJob.perform_async(shop_domain, webhook)
    head :no_content
  end

  def orders_paid
    params.permit!
    webhook = webhook_params.to_h
    webhook = {
      id: webhook[:id],
      order_number: webhook[:order_number],
      customer: webhook[:customer],
      line_items: webhook[:line_items]
    }.to_json
    puts(webhook.to_json, '::::WEBHOOK HASH PAID')
    OrdersPaidJob.perform_async(shop_domain, webhook)
    head :no_content
  end

  def webhook_params
    params.except(:controller, :action, :type)
  end
end
