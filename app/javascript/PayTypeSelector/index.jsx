import React from 'react'

import NoPayType from './NoPayType'
import CreditCardPayType from './CreditCardPayType'
import CheckPayType from './CheckPayType'
import PurchaseOrderPayType from './PurchaseOrderPayType'

class PayTypeSelector extends React.Component {
  state = {
    selectedPayType: null 
  }

  onPayTypeSelected = (event) => {
    this.setState({selectedPayType: event.target.value})
  }

  render() {
    let PayTypeCustomComponent 
    switch (this.state.selectedPayType) {
      case 'Check':
        PayTypeCustomComponent = CheckPayType
        break;
      case 'Credit card':
          PayTypeCustomComponent = CreditCardPayType
        break;
      case 'Purchase order':
          PayTypeCustomComponent = PurchaseOrderPayType
        break;
      default:
        PayTypeCustomComponent = NoPayType
        break;

    }
    return (
      <div>
        <div className='field'>
          <label htmlFor='order-pay-type'>Pay Type</label>
          <select id="pay_type" name="order[pay_type]" onChange={this.onPayTypeSelected}>
            <option value=''> Select a payment method </option>
            <option value='Check'> Check </option>
            <option value='Credit card'> Credit card </option>
            <option value='Purchase order'> Purchase order </option>
          </select>
        </div>
        <PayTypeCustomComponent />
      </div>
    );
  }
}

export default PayTypeSelector