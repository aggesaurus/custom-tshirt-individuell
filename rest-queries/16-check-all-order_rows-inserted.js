// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
    path: 'order_rows',
    method: 'get',
    test() {
      // check that we got the right number of users
      // (intentionelly spelled length wrong to provoke a fail)
      assert.equal(response.length, store.mockOrderRows.length);
      // check that all users where
      // inserted correctly with correct data
      assert.deepEqual(response, store.mockOrderRows);
    }
  });