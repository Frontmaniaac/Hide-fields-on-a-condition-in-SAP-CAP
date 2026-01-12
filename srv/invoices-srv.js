const cds = require('@sap/cds')

module.exports = class WindowsSell extends cds.ApplicationService {
  init() {

    const { Invoices } = cds.entities('WindowsSell')

    this.after('READ', Invoices, async (invoices) => {
      const today = new Date().toISOString().slice(0, 10)
      console.log(today)
      for (const invoice of invoices) {
        invoice.isDelayed = invoice.dueDate < today
      }
    })

    return super.init()
  }
}
