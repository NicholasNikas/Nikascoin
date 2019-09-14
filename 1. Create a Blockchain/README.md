Part 1: Create your own blockchain

To start you must first install Postman and create an account as we will use it to run our blockchain.

In this blockchain.py code we are simply creating a blockchain network with the following methods:

  create_block: create a new block with attributes of its index in the chain, time created, proof and the previous blocks hash code 
  
  get_previous_block: return last block in chain
  
  proof_of_work: calculate a blocks proof of work using sha256 hash code and loop until we get a proof with 4 leading zeroes. Feel free to change hash operation formula to whatever you like and decide your own condition for a valid proof value.
  
  hash: calculate a blocks sha256 hash value using haslib library
  
  is_chain_valid: check if our blockchain is valid, meaning all blocks previous proof values are equal to the hash of the previous block
  
  Note we are using Flask to run our blockchain, see https://flask.palletsprojects.com/en/1.1.x/quickstart/ if interested in understanding how it works
  
  To run our blockchain:
  
    1- Open Postman
    
    2- Create a new request, use 'GET'
    
    3- In the URL slot type 'http://127.0.0.1:5000/get_chain' which uses the port 5000 for flask and runs the get_chain method.
       Notice we have created our genesis block and the format is in JSON.
       
    4- To add a new block simply type 'http://127.0.0.1:5000/mine_block'
    
    5- Call get_chain again to see entire blockhain, feel free to mine as many blocks as you like!
    
    6- Call 'is_valid' to see if your blockchain is valid
    
  
  
