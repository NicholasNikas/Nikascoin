Part 2: Create a Cryptocurrency

Using our blockchain created to make a cryptocurrency that can be used to make transactions between two different people.

Notice cryptocurrency I created is called the 'Nikascoin', feel free to change the name to whatever you like!

This cryptocurrency is not worth anything and is used for demonstration purposes only.

Notice the nikascoin.py file contains the entire code of blockchain.py with many added features and methods:


    add_transaction: simply create a transaction between a sender and a receiver for an amount of nikascoins

    add_node: add a node to the blockchain network

    replace_chain: replacing the current chain of someone by the longest chain in network (Consensus Protocol)

    Notice there are three different files each with ports 5001, 5002 and 5003 respectively. These files will represent a     single person in the network and we will interconnect them all so we can make transactions between one another.


How to run 'Create a Cryptocurrency':


    1- Open three IPython consoles and run each nikascoin_node_500(1)(2)(3).py code in each console. These consoles will          represent a different person connected to the same chain.
  
    2- Open Postman and open 3 requests
  
    3- To connect each person to the same chain; with a POST request type 'http://127.0.0.1:5001/connect_node' in URL slot.
  
    4- Click on 'body', then 'raw', then select JSON format text and copy the file 'nodes.json' into the body. Make sure to delete the line with port 5001 as we want to connect 5001 to both 5002 and 5003 and not itself. Send the request.
  
    5- Repeat step 4 but instead connect 5002 to 5001+5003 and 5003 to 5001+5002.
  
    6- Aplly the get_chain command to all three persons to create genesis block for each, notice timestamp will be different for each but do not worry
  
    7- On person 5001 apply the mine_block method, notice I received 100 nikascoins from an unknown adress. Feel free to change this part of code to whatever you like (line 123 on all three files)
  
    8- To add a transaction, on any person with a POST request, type /add_transaction in URL and go to body, raw, JSON text and copy 'transaction.js' file into the body. Fill in your desired arguments of transaction. Send request when done.
  
    9- Notice transaction is still not in a block, thats because we must mine a block for a transaction to be valid! Call the mine_block request and you should see your transaction on a block.
  
    If all goes well it should look something like this
  
    10- Notice how not all three people have the same chain if you call 'get_chain' on each person. To fix that simply call   '/replace_chain' GET request on all three. Notice how now everyone has the longest most up to date chain.
 
    11- Call 'is_valid' to verify all three chains are valid
  
