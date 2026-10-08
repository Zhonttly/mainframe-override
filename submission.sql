-- Looking into forum posts made in April 2048. 
SELECT * FROM forum_posts WHERE date BETWEEN '2048-04-01' and '2048-04-30';

-- The authors user handle is smart-money-44. We can look into the accounts table and see if finding that account gives
-- us any information
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';

-- The Name of the that user appears to be Brad Steele. Since his dad has the intel we need, we can search
-- for forum accounts with that last name since we know his dad is also active in the forum.
SELECT * FROM forum_accounts WHERE last_name ILIKE 'steele';

-- This returned 3 separate users with the last name of Steele. Brad Steele is smart-money-44, so
-- we have to figure out if his dad is Andrew or Kevin. Let's check the emptystack_accounts table
-- and see what we can find.
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

-- We found an Andrew and Lance Steele in the table. Bingo, Andrew is the only match between the two tables, 
-- and now we have his username and password. 
-- Username = triple-cart-38 
-- Password = password456 

-- Now that we're connected to the emptystack tables, let's take a look at the 
-- messages Andrew Steele has been receiving that might mention taxis.
SELECT * FROM emptystack_messages WHERE subject ILIKE '%taxi%';

-- Looks like the project is name Project TAXI. Andrew has been receiving messages 
-- from your-boss-99. Not a lot to go off of, but let's take a look at this account
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';

-- Skylar Singer is the boss'name. But also, we have the boss's password!
-- Username = your-boss-99 
-- Password = notagaincarter 

-- Since we also need the id of the project, let's see if there are any projects 
-- with the code name of 'TAXI'
SELECT * FROM emptystack_projects WHERE code ILIKE '%taxi%';

-- Nice! We now know that the id is "DczE0v2b". Wehave the information we need now. 
-- Wish me luck!

-- Project successfully shutdown. We did it!