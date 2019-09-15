Part 2: Create a Cryptocurrency

Using our blockchain created to make a cryptocurrency that can be used to make transactions between two different people.

Notice cryptocurrency I created is called the 'Nikascoin', feel free to change the name to whatever you like!

This cryptocurrency is not worth anything and is used for demonstration purposes only.

Notice the nikascoin.py file contains the entire code of blockchain.py with many added features and methods:

add_transaction: simply create a transaction between a sender and a receiver for an amount of nikascoins

add_node: add a node to the blockchain network

replace_chain: replcaing the chain by the longest chain in network (Consensus Protocol)

Notice there are three different files each with ports 5001, 5002 and 5003 respectively. These files will represent a single person in the network and we will interconnect them all so we can make transactions between one another.

How to run 'Create a Cryptocurrency':

  1- Open three IPython consoles and run each nikascoin_node_500(1)(2)(3).py code in each console. These consoles will represent a different person connected to the same chain.
  
  2- Open Postman and open 3 requests
  
  3- To connect each person to the same chain; with a POST request type 'http://127.0.0.1:5001/connect_node' in URL slot.
  
  4- Click on 'body', then 'raw', then select JSON format text and copy the file 'nodes.json' into the body. Make sure to delete the line with port 5001 as we want to connect 5001 to both 5002 and 5003 and not itself. Send the request.
  
  If all goes well, it should look like this: ![Alt text](/Desktop/postman_shot.png?raw=true)
