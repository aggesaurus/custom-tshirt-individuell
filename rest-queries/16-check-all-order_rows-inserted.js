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
    // try{
    // for (let i = 0; i < response.length; i++){
    //   let a;
    //   try {
    //     a = assert.deepEqual(response[i], store.mockOrderRows[i])
    //   }
    //   catch(e){ console.log("NOT EQUAL", e)}
    //   console.log("response", response[i]);
    //   console.log("mockOrderRows", store.mockOrderRows[i]);
    // }
    assert.deepEqual(response, store.mockOrderRows);
  // }catch(e){
  //   console.log(e);
  // }
  }
});