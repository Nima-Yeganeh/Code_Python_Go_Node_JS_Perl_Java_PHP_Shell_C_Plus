const axios = require('axios');
const apiUrl = 'https://jsonplaceholder.typicode.com/todos/1';

axios.get(apiUrl)
  .then(response => {
	  console.log('Data from the API:');
	  console.log(response.data);
  })
  .catch(error => {
	  console.error(`Error fetching data from the API: ${error.message}`);
  });

