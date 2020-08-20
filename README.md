# Sample App Using [Pundit](https://github.com/varvet/pundit)

Really simple Rails application using the Puding gem for authorization. By
the way, it is also using Devise.

## Sales page

The sales index page is allowed only for sales and directors, this role is
defined in the User model. This logic is available on:
app/policies/sales_policy.rb.

The controller is just calling the `authorize` method and relying on the
convention that a `SalesPolicy` is available.

This is very simple but you can expand that and create your complex
scenarios with this simplicity.
