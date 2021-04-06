-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2021 at 01:48 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mealplans_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210226145257', '2021-02-26 15:56:15', 149),
('DoctrineMigrations\\Version20210304102511', '2021-03-04 11:27:34', 110),
('DoctrineMigrations\\Version20210304103531', '2021-03-04 11:35:48', 51),
('DoctrineMigrations\\Version20210304110216', '2021-03-04 12:04:53', 86),
('DoctrineMigrations\\Version20210317171748', '2021-03-17 18:22:15', 50),
('DoctrineMigrations\\Version20210321121225', '2021-03-21 13:17:28', 128);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int NOT NULL,
  `ingredient_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingredient_name`) VALUES
(154, 'agave nectar'),
(115, 'almond butter'),
(127, 'almond milk'),
(264, 'almond yogurt'),
(57, 'apple cider vinegar'),
(114, 'apples'),
(193, 'aubergine'),
(4, 'avocado'),
(47, 'baby leaf salad'),
(211, 'baby potatoes'),
(74, 'baby spinach'),
(219, 'bacon'),
(99, 'baked beans'),
(100, 'baking powder'),
(226, 'balsamic vinegar'),
(103, 'bananas'),
(153, 'barley flakes'),
(33, 'basil'),
(210, 'bay leaves'),
(208, 'beef stock'),
(244, 'bicarbonate of soda'),
(56, 'blue cheese'),
(118, 'blueberries'),
(206, 'braising beef'),
(124, 'Brazil nuts'),
(34, 'bread'),
(49, 'broccoli'),
(89, 'brown basmati rice'),
(112, 'brown sugar'),
(128, 'buckwheat flour'),
(160, 'bulgur wheat'),
(184, 'burger buns'),
(146, 'button mushrooms'),
(261, 'cacao nibs'),
(260, 'cacao powder'),
(170, 'can chopped tomato'),
(87, 'capers'),
(73, 'carrots'),
(77, 'cashews'),
(68, 'cauliflower'),
(199, 'cayenne pepper'),
(191, 'celeriac'),
(225, 'celery heart'),
(19, 'celery sticks'),
(67, 'chapatis'),
(28, 'cherry tomatoes'),
(134, 'chia seeds'),
(200, 'chicken breasts'),
(172, 'chicken stock'),
(179, 'chicken thighs'),
(150, 'chilli flakes'),
(15, 'chilli powder'),
(149, 'chives'),
(220, 'chopped kale'),
(78, 'cider vinegar'),
(120, 'cinnamon'),
(239, 'coarse or fine semolina'),
(254, 'coconut butter'),
(143, 'coconut flakes'),
(101, 'coconut milk'),
(82, 'coconut oil'),
(142, 'coconut yogurt'),
(35, 'cooked beetroot'),
(10, 'cooked black beans'),
(201, 'cooked black-eyed beans'),
(218, 'cooked butter beans'),
(29, 'cooked chickpeas'),
(181, 'cooked haricot beans'),
(234, 'cooked lentils'),
(40, 'cooked quinoa'),
(231, 'cooked red kidney beans'),
(9, 'coriander'),
(255, 'cornflour'),
(53, 'courgettes'),
(42, 'cucumber'),
(83, 'cumin seeds'),
(66, 'curry paste'),
(63, 'dairy-free yogurt'),
(157, 'dates'),
(116, 'demerara sugar'),
(241, 'desiccated coconut'),
(72, 'Dijon mustard'),
(44, 'dill'),
(267, 'double cream'),
(140, 'dragon fruit'),
(171, 'dried apricot'),
(76, 'dried cranberries'),
(180, 'dried thyme'),
(189, 'dried yeast'),
(17, 'eggs'),
(32, 'feta'),
(265, 'flaked almonds'),
(7, 'flour tortillas'),
(262, 'frozen berries'),
(90, 'frozen edamame beans'),
(23, 'frozen peas'),
(24, 'frozen spinach'),
(69, 'garam masala'),
(14, 'garlic cloves'),
(26, 'garlic flatbreads'),
(71, 'ginger'),
(131, 'gluten-free baking powder'),
(213, 'gluten-free chicken stock'),
(229, 'gluten-free Dijon mustard'),
(54, 'goat cheese'),
(216, 'gochujang paste'),
(106, 'goji berries'),
(248, 'golden caster sugar'),
(242, 'grated carrot'),
(135, 'Greek yogurt'),
(84, 'green chilli'),
(214, 'green salad'),
(119, 'ground almonds'),
(245, 'ground cinnamon'),
(161, 'ground cloves'),
(16, 'ground cumin'),
(132, 'ground flaxseeds'),
(130, 'ground mixed spice'),
(246, 'ground nutmeg'),
(266, 'gruyère'),
(39, 'halloumi'),
(221, 'hazelnuts'),
(126, 'honey'),
(137, 'hulled hemp seeds'),
(75, 'hummus'),
(123, 'icing sugar'),
(224, 'jar peppadew peppers'),
(223, 'jar tuna'),
(107, 'jumbo oats'),
(263, 'jumbo porridge oats'),
(108, 'kiwi fruit'),
(230, 'lamb chops'),
(168, 'lean diced lamb'),
(197, 'leek'),
(36, 'lemon juice'),
(228, 'lemon zest'),
(21, 'lemons'),
(70, 'lentils'),
(185, 'lettuce'),
(5, 'lime'),
(139, 'mango'),
(81, 'maple syrup'),
(52, 'mascarpone'),
(37, 'mint'),
(64, 'mint sauce'),
(138, 'mixed berries'),
(59, 'mixed leaf salad'),
(110, 'mixed seeds'),
(111, 'muesli mix'),
(129, 'muscovado sugar'),
(58, 'mustard powder'),
(205, 'naan bread'),
(97, 'nutritional yeast'),
(121, 'oat milk'),
(151, 'oatmeal'),
(3, 'olive oil'),
(31, 'olives'),
(18, 'onions'),
(232, 'orange juice'),
(233, 'orange zest'),
(156, 'oranges'),
(222, 'orecchiette pasta'),
(61, 'oregano'),
(22, 'orzo'),
(27, 'parmesan'),
(162, 'parsley'),
(258, 'parsnip'),
(104, 'passion fruit'),
(105, 'peach'),
(6, 'peanut butter'),
(159, 'pearl barley'),
(60, 'pears'),
(117, 'pecans'),
(25, 'pesto'),
(148, 'pine nuts'),
(141, 'pineapple'),
(38, 'pittas'),
(51, 'pizza dough'),
(236, 'pizza toppings of your choice'),
(50, 'plain flour'),
(188, 'plain wholemeal flour'),
(183, 'polenta'),
(109, 'pomegranate seeds'),
(187, 'porridge oats'),
(96, 'Portobello mushroom'),
(94, 'potatoes'),
(136, 'pumpkin seeds'),
(196, 'quinoa'),
(133, 'quinoa flour'),
(243, 'raisins'),
(169, 'ras-el-hanout spice mix'),
(125, 'raspberries'),
(62, 'red cabbage'),
(55, 'red chilli'),
(13, 'red onions'),
(186, 'red peppers'),
(207, 'red wine'),
(194, 'red wine vinegar'),
(247, 'rhubarb'),
(88, 'rocket'),
(253, 'rolled oats'),
(158, 'rose syrup'),
(238, 'sachet fast-action dried yeast'),
(190, 'salmon fillets'),
(227, 'sea bass fillets'),
(80, 'sea salt flakes'),
(203, 'semi-dried tomatoes'),
(92, 'sesame oil'),
(93, 'sesame seeds'),
(2, 'smoked paprika'),
(11, 'sour cream'),
(195, 'sourdough'),
(147, 'soy cream'),
(251, 'soy custard'),
(145, 'soy flour'),
(113, 'soy milk'),
(95, 'soy sauce'),
(152, 'spelt flakes'),
(257, 'spinach'),
(204, 'split red lentils'),
(43, 'spring onions'),
(8, 'sriracha chilli sauce'),
(155, 'strawberries'),
(237, 'strong white flour'),
(79, 'sugar'),
(198, 'sundried tomatoes'),
(240, 'sunflower oil'),
(209, 'swede'),
(1, 'sweet potatoes'),
(202, 'sweetcorn'),
(30, 'tahini'),
(91, 'tamari'),
(164, 'tarragon'),
(215, 'tempeh'),
(192, 'thyme sprigs'),
(167, 'tiger prawns'),
(86, 'tikka masala paste'),
(256, 'toasted desiccated coconut'),
(65, 'tofu'),
(182, 'tomato purée'),
(41, 'tomatoes'),
(212, 'turkey breast steaks'),
(85, 'turmeric'),
(259, 'unsweetened almond milk'),
(252, 'unsweetened apple sauce'),
(249, 'vanilla bean paste'),
(122, 'vanilla extract'),
(250, 'vegan margarine'),
(98, 'vegan sausages'),
(102, 'vegetable oil'),
(20, 'vegetable stock'),
(48, 'walnuts'),
(235, 'watercress'),
(166, 'watermelon'),
(217, 'white fish fillets'),
(144, 'white self-raising flour'),
(165, 'white wine vinegar'),
(163, 'wholegrain mustard'),
(45, 'wholemeal self-raising flour'),
(12, 'yellow peppers'),
(46, 'yogurt');

-- --------------------------------------------------------

--
-- Table structure for table `meal_plans`
--

CREATE TABLE `meal_plans` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `meal_plan_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_plans`
--

INSERT INTO `meal_plans` (`id`, `user_id`, `meal_plan_date`) VALUES
(3, 1, '2021-03-21'),
(5, 1, '2021-03-21'),
(6, 1, '2021-03-22'),
(7, 1, '2021-03-22'),
(8, 3, '2021-03-29'),
(12, 14, '2021-04-02'),
(18, 1, '2021-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `meal_plans_recipes`
--

CREATE TABLE `meal_plans_recipes` (
  `meal_plans_id` int NOT NULL,
  `recipes_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_plans_recipes`
--

INSERT INTO `meal_plans_recipes` (`meal_plans_id`, `recipes_id`) VALUES
(3, 3),
(3, 14),
(3, 15),
(3, 16),
(3, 25),
(3, 27),
(5, 5),
(5, 9),
(5, 18),
(5, 23),
(5, 26),
(6, 13),
(6, 15),
(6, 18),
(6, 20),
(6, 23),
(7, 10),
(7, 14),
(7, 21),
(7, 29),
(7, 31),
(8, 14),
(8, 15),
(8, 16),
(8, 23),
(8, 26),
(12, 13),
(12, 15),
(12, 16),
(12, 25),
(12, 28),
(18, 15),
(18, 18),
(18, 24),
(18, 26),
(18, 41);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int NOT NULL,
  `recipe_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_method` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_prep_time` int NOT NULL,
  `recipe_img` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anything` tinyint(1) NOT NULL,
  `vegetarian` tinyint(1) NOT NULL,
  `vegan` tinyint(1) NOT NULL,
  `glutenfree` tinyint(1) NOT NULL,
  `dairyfree` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `recipe_name`, `recipe_method`, `recipe_prep_time`, `recipe_img`, `anything`, `vegetarian`, `vegan`, `glutenfree`, `dairyfree`) VALUES
(1, 'Sweet potato, peanut butter and chilli quesadillas', 'STEP 1\r\nHeat oven to 200C/180C fan/gas 6. Toss the sweet potatoes with the paprika and 2 tbsp olive oil in a roasting tin. Roast for 15 mins, tossing halfway through, until the potatoes are beginning to crisp.\r\n\r\nSTEP 2\r\nStone, peel and chop the avocado, tip into a bowl with the lime juice and zest, and season generously. Mash together with a fork and set aside. In a small bowl, combine the peanut butter and remaining olive oil. Set aside.\r\n\r\nSTEP 3\r\nHeat a griddle pan or frying pan over a medium heat until very hot. Brush each tortilla on one side with the remaining oil. Place one tortilla, oiled-side down, in the pan and spread over half the peanut butter mixture, half the sweet potatoes, a little chilli sauce and half the coriander. Top with another tortilla, oiled-side up. Press down with a heavy saucepan and cook for 2-3 mins each side until the quesadilla is crisp outside and warm in the middle. Repeat to make a second quesadilla, then cut each into quarters and serve with the crushed avocado and lime wedges.', 60, 'sweet-potato-peanut-butter-quesadillas.webp', 1, 1, 1, 0, 0),
(2, 'Vegetarian fajitas', 'STEP 1\r\nTo make the fajita mix, take two or three strips from each colour of pepper and finely chop them. Set aside. Heat the oil in a frying pan and fry the remaining pepper strips and the onion until soft and starting to brown at the edges. Cool slightly and mix in the chopped raw peppers. Add the garlic and cook for 1 min, then add the spices and stir. Cook for a couple of mins more until the spices become aromatic, then add half the lime juice and season. Transfer to a dish, leaving any juices behind, and keep warm.\r\n\r\nSTEP 2\r\nTip the black beans into the same pan, then add the remaining lime juice and plenty of seasoning. Stir the beans around the pan to warm them through and help them absorb any flavours of the fajita mix, then stir through the coriander.\r\n\r\nSTEP 3\r\nWarm the tortillas in a microwave or in a low oven, then wrap them so they don’t dry out. Serve the tortillas with the fajita mix, beans, avocado and soured cream for everyone to help themselves.', 15, 'veggie-fajitas.webp', 1, 1, 0, 0, 0),
(3, 'Sweet potato hash, eggs and smashed avo', 'STEP 1\r\nSmash up the avocado with a fork, leaving some pieces chunky, then add the lime juice and season to taste.\r\n\r\nSTEP 2\r\nHeat the oil in a large, non-stick frying pan over a medium heat. Add the onion and cook for 2 mins, then stir in the sweet potato. Season and press the potato into the pan with the back of a wooden spoon. Cook for 10-15 mins, stirring occasionally, until the potato is softened and crisping at the edges.\r\n\r\nSTEP 3\r\nMake two spaces in the pan, crack in the eggs and cook for 2-3 mins until the whites are just set and the yolks runny. Dollop on the avocado and drizzle with sriracha to serve.', 30, 'sweet-potato-hash.webp', 1, 1, 0, 1, 0),
(4, 'Green pesto minestrone', 'STEP 1\r\nHeat the oil in a large saucepan, add the onion, celery and a pinch of salt, and fry for 8 mins until soft. Add the stock with the zest and juice of the lemons, and season. Stir in the orzo and cook for 5 mins, then add the peas and spinach, and cook for a further 5 mins. Swirl though the pesto and season.\r\n\r\nSTEP 2\r\nHeat the flatbreads, if using, following pack instructions. Ladle the soup generously into bowls and top with a handful of parmesan. Serve with the flatbread to dip.', 35, 'green-pesto-minestrone.webp', 1, 1, 0, 0, 0),
(5, 'Veggie-loaded flatbread', 'STEP 1\r\nHeat the grill to its highest setting. Spread the onion wedges out on a baking tray and drizzle with 1 tbsp of the oil. Grill for 3-5 mins turning halfway through, then add the tomatoes to the tray, season and grill for a further 5 mins or until juicy and popping.\r\n\r\nSTEP 2\r\nPut the chickpeas in a pan with the garlic and remaining 1 tbsp oil, then heat for 5 mins before crushing the chickpeas using a potato masher. Stir through the tahini, the lemon zest and juice along with 2 tbsp water. Season.\r\n\r\nSTEP 3\r\nWarm your flatbread under the grill for a couple of minutes. Top with the crushed chickpeas, then the tomato and onion mixture. Finish with the olives, feta and basil, and a drizzle of olive oil.', 25, 'veggie-loaded-flatbread.jpg', 1, 1, 0, 0, 0),
(6, 'Beetroot hummus toasts with olives and mint', 'STEP 1\r\nToast the bread – if the slices are quite long, halve them first.\r\n\r\nSTEP 2\r\nMeanwhile, tip the chickpeas into a bowl with half the beetroot, the lemon juice, garlic and oil, and blitz with a stick blender to make hummus. Spread on the toast, top with the remaining beetroot and scatter with feta, olives and mint.', 12, 'beetroot-hummus-toasts.webp', 1, 1, 0, 0, 0),
(7, 'Halloumi and quinoa fattoush', 'STEP 1\r\nHeat the grill to high. Toss the pitta pieces with 1 tbsp oil and spread out onto a baking sheet. Grill for 3-4 mins, turning halfway, until golden and crisp. Set aside to cool.\r\n\r\nSTEP 2\r\nMeanwhile, whisk together the remaining oil with the lemon juice and garlic, then season. Heat a large griddle pan or non-stick frying pan over a high heat and cook the halloumi for 1-2 mins on each side or until lightly charred. \r\n\r\nSTEP 3\r\nCook the quinoa following pack instructions, leave to cool, then toss with the tomatoes, cucumber, spring onion, most of the fresh herbs and the dressing. Season to taste. Tip onto a serving plate and top with the halloumi, pitta and remaining herbs.', 17, 'halloumi-quinoa-fattoush.webp', 1, 1, 0, 0, 0),
(8, 'Wholemeal wraps with minty pea hummus and beetroot', 'STEP 1\r\nFor the wraps, tip the flour into a small bowl and roughly rub in the oil. Add 60ml warm water and bring together with your hands to make a soft dough. Cut in half, then roll out each piece on a floured surface as thinly as you can to make a round that will cover the base of a large frying pan. Heat the frying pan, then cook the wraps for about 2 mins each side – there\'s no need for extra oil. Take care not to make them crisp as they need to remain pliable.\r\n\r\nSTEP 2\r\nFor the filling, blitz the peas, lemon juice, 2 tbsp yogurt, garlic and most of the mint using a food processor or hand blender to make a thick purée. Spread over the wraps, then pile on the salad leaves, onion and beetroot. Dollop on the remaining yogurt and scatter over the feta, walnuts and remaining mint. Serve with lemon wedges for squeezing over, if you like.', 16, 'wholewheat-wraps-with-minty-pea-hummus-beetroot.webp', 1, 1, 0, 0, 0),
(9, 'Broccoli and goat cheese pizzettes', 'STEP 1\r\nHeat the oven to 240C/220C fan/gas 9. Put a baking sheet in the oven to heat up.\r\n\r\nSTEP 2\r\nBring a medium pan of water to the boil, add the broccoli and boil for 1 min. Drain and pat dry with kitchen paper.\r\n\r\nSTEP 3\r\nLightly dust your work surface with a little flour. Split the dough in half and roll into two oval shapes. Mix the mascarpone and lemon zest together in a bowl. Remove the hot tray from the oven and use a palette knife to transfer the bases onto the baking tray. Spread with the mascarpone and top with the broccoli and courgette, then season with black pepper. Put back in the oven to bake for 10-12 mins or until crisp and golden around the edges. \r\n\r\nSTEP 4\r\nScatter with the crumbled goat’s cheese and red chilli, and drizzle over a little olive oil to finish.', 30, 'broccoli-goat-cheese-pizzettes.webp', 1, 1, 0, 0, 0),
(10, 'Toasted soda bread with blue cheese and pear', 'STEP 1\r\nToast the bread while you make the dressing: mash 15g blue cheese with the oil, vinegar, mustard powder, garlic and 1 tbsp water.\r\n\r\nSTEP 2\r\nPile the salad leaves onto two plates. Spread the remaining cheese over the toast (it doesn’t matter if it goes cold), top with the pear and scatter with the walnut pieces. Drizzle the dressing over the salad leaves and serve.', 12, 'walnut-pear-toasts.webp', 1, 1, 0, 0, 0),
(11, 'Oregano halloumi with orzo salad', 'STEP 1\r\nBring a large pan of salted water to the boil and cook the orzo following pack instructions. Meanwhile, mix the chopped oregano in a small bowl with the oil and brush some over the halloumi. Heat a large, non-stick frying pan and cook the halloumi for a few mins each side until golden and soft.\r\n\r\nSTEP 2\r\nDrain the cooked orzo and mix with the tomatoes, olives and pesto. Season to taste. Spoon onto a serving plate and top with the halloumi. Drizzle over any remaining oregano oil and scatter over the leaves.', 18, 'oregano-halloumi-with-orzo-salad.webp', 1, 1, 0, 0, 0),
(12, 'Curried tofu wraps', 'STEP 1\r\nMix the cabbage, yogurt and mint sauce, season and set aside. Toss the tofu with the tandoori paste and 1 tbsp of the oil. Heat a frying pan and cook the tofu, in batches, for a few mins each side until golden. Remove from the pan with a slotted spoon and set aside. Add the remaining oil to the pan, stir in the onions and garlic, and cook for 8-10 mins until softened. Return the tofu to the pan and season well.\r\n\r\nSTEP 2\r\nWarm the chapatis following pack instructions, then top each one with some cabbage, followed by the curried tofu and a good squeeze of lime.', 45, 'curried-tofu-wrap.webp', 1, 1, 1, 0, 0),
(13, 'Sweet potato and cauliflower lentil bowl', 'STEP 1\r\nHeat oven to 200C/180C fan/gas 6. Toss the sweet potato and cauliflower with the garam masala, half the oil and some seasoning. Spread out on a large roasting tray. Add the garlic and roast for 30-35 mins until cooked.\r\n\r\nSTEP 2\r\nMeanwhile, put the lentils in a saucepan with 400ml cold water. Bring to the boil, then simmer for 20-25 mins until the lentils are cooked but still have some bite. Drain. \r\n\r\nSTEP 3\r\nRemove the garlic cloves from the tray and squish them with the blade of your knife. Put the garlic in a large bowl with the remaining oil, ginger, mustard, a pinch of sugar and one-third of the lime juice. Whisk, then tip in the warm lentils, stir and season to taste. Coarsely grate the carrots, shred the cabbage and roughly chop the coriander. Squeeze over the remaining lime juice and season to taste.\r\n\r\nSTEP 4\r\nDivide the lentil mixture between four bowls (or four containers if saving and chilling). Top each serving with a quarter of the carrot slaw and a quarter of the sweet potato and cauliflower mix.', 55, 'sweet-potato-bowl.webp', 1, 1, 1, 1, 1),
(14, 'Roasted cauli-broc bowl with tahini hummus', 'STEP 1\r\nThe night before, heat oven to 200C/180C fan/gas 6. Put the cauliflower and broccoli in a large roasting tin with the oil and a sprinkle of flaky sea salt. Roast for 25-30 mins until browned and cooked. Leave to cool completely.\r\n\r\nSTEP 2\r\nBuild each bowl by putting half the quinoa in each. Lay the slices of beetroot on top, followed by the spinach, cauliflower, broccoli and walnuts. Combine the tahini, hummus, lemon juice and 1 tbsp water in a small pot. Before eating, coat in the dressing. Serve with the lemon wedges.', 40, 'roasted-cauli-bowl.webp', 1, 1, 1, 1, 0),
(15, 'Broccoli salad', 'STEP 1\r\nTo make the pickle, heat the vinegar, sugar and salt in a small pan. Boil for 1 min until the sugar dissolves, then add the red onion and simmer for 1 min. Take off the heat, cover, and leave to cool completely.\r\n\r\nSTEP 2\r\nMix the broccoli, carrots, cranberries and cashews in a large bowl. Add the cooled pickled onion, reserving the pickling liquid. \r\n\r\nSTEP 3\r\nWhisk together the pickling liquid, oil, maple syrup and lemon zest and juice, along with 2 tbsp cold water. Pour over the vegetables and mix until well coated.', 13, 'broccoli-salad.webp', 1, 1, 1, 1, 1),
(16, 'Vegan chickpea curry jacket potatoes', 'STEP 1\r\nHeat oven to 200C/180C fan/gas 6. Prick the sweet potatoes all over with a fork, then put on a baking tray and roast in the oven for 45 mins or until tender when pierced with a knife.\r\n\r\nSTEP 2\r\nMeanwhile, melt the coconut oil in a large saucepan over medium heat. Add the cumin seeds and fry for 1 min until fragrant, then add the onion and fry for 7-10 mins until softened.\r\n\r\nSTEP 3\r\nPut the garlic, ginger and green chilli into the pan, and cook for 2-3 mins. Add the spices and tikka masala paste and cook for a further 2 mins until fragrant, then tip in the tomatoes. Bring to a simmer, then tip in the chickpeas and cook for a further 20 mins until thickened. Season.\r\n\r\nSTEP 4\r\nPut the roasted sweet potatoes on four plates and cut open lengthways. Spoon over the chickpea curry and squeeze over the lemon wedges. Season, then scatter with coriander before serving.', 60, 'sweet-potato-curry.webp', 1, 1, 1, 1, 0),
(17, 'Charred cauliflower, lemon and caper orzo', 'STEP 1\r\nHeat the grill to high. Toss the cauliflower with half the oil and some seasoning. Tip onto a baking tray and grill for 15-20 mins until golden, charred, and tender all the way through.\r\n\r\nSTEP 2\r\nMeanwhile, cook the orzo in a pan of boiling salted water for 8 mins, or until al dente. Drain.\r\n\r\nSTEP 3\r\nHeat the remaining oil in a frying pan and sizzle the capers and garlic until golden. Stir in the orzo, cauliflower, lemon zest and juice and the stock. Bubble for 1 min, then spoon half into a bowl and top with the rocket. Leave the leftovers to cool for the lunchbox, see tip below. ', 25, 'cauliflower-orzo.webp', 1, 1, 1, 0, 0),
(18, 'Sesame and ginger sushi bowls', 'STEP 1\r\nCut the ginger as thinly as you can to make wafer thin slices or finely shred. Put in a bowl with the 4 tbsp vinegar and 1 tbsp water and massage briefly to soften. Set aside.\r\n\r\nSTEP 2\r\nPut the rice in a medium pan and add 600ml water. Bring to the boil, cover and simmer on a low heat for 15 mins. Tip in the edamame beans, but don’t stir them in, then cover and cook for 7 mins more. The rice should be tender and have absorbed all the water.\r\n\r\nSTEP 3\r\nSkim the beans off the rice and set aside. Tip the 1 tbsp of vinegar and ½ tbsp tamari into the rice, and stir well. Spoon onto a plate and spread out to cool quickly. Once cool, spoon into four bowls or lunchboxes. Top with the avocado, carrot, beans, tomatoes and cucumber.\r\n\r\nSTEP 4\r\nSpoon the ginger from the vinegar and scatter on top. Add the remaining tamari and sesame oil to the vinegar. Spoon over the sushi bowl and scatter with the seeds.', 32, 'sesame-and-ginger-sushi-bowls.webp', 1, 1, 1, 1, 1),
(19, 'Vegan fry-up', 'STEP 1\r\nCook the potato whole in a large pan of water, boil for 10 mins then drain and allow to cool. Peel the skin away then coarsely grate. Mix with the peanut butter and season well. Set aside in the fridge until needed.\r\n\r\nSTEP 2\r\nHeat oven to 200C/180C fan/gas 6. Put the cherry tomatoes onto a baking tray, drizzle with 2 tsp sunflower oil, season and bake for 30 mins or until the skins have blistered and start to char. Cook the beans and sausages following the instructions on the pack so they\'re ready to serve at the same time as the scrambled tofu.\r\n\r\nSTEP 3\r\nMeanwhile, mix the maple syrup, soy sauce and ¼ tsp smoked paprika together in a large bowl, add the sliced mushroom and toss to coat in the mixture. Leave to stand while you pour 2 tsp sunflower oil into a non-stick frying pan and bring it up to a medium high heat. Fry the mushroom until just starting to turn golden but not charred. Scoop onto a plate and keep warm until serving.\r\n\r\nSTEP 4\r\nPut 1 tbsp oil into the frying pan and add spoonfuls of the potato mixture – you should get about 4. Fry for 3-4 mins each side then drain onto kitchen paper.\r\n\r\nSTEP 5\r\nCrumble the tofu into your frying pan and sprinkle over the remaining ingredients and a good pinch of salt and pepper. If the pan looks a little dry add a splash more oil. Fry for 3-4 mins or until the tofu is broken into pieces, well coated in the seasoning and hot through.\r\n\r\nSTEP 6\r\nDivide everything between 2 plates and serve with a hot mug of tea made using soy milk.', 45, 'vegan-fry-up.webp', 1, 1, 1, 0, 0),
(20, 'Coconut and banana pancakes', 'STEP 1\r\nSift the flour and baking powder into a bowl, and stir in 2 tbsp of the sugar and a pinch of salt. Pour the coconut milk into a bowl, whisk to mix in any fat that has separated, then measure out 300ml into a jug. Stir the milk slowly into the flour mixture to make a smooth batter, or whizz everything in a blender.\r\n\r\nSTEP 2\r\nHeat a shallow frying pan or flat griddle and brush it with oil. Use 2 tbsp of batter to make each pancake, frying two at a time – any more will make it difficult to flip them. Push 4-5 pieces of banana into each pancake and cook until bubbles start to pop on the surface, and the edges look dry. They will be a little more delicate than egg-based pancakes, so turn them over carefully and cook the other sides for 1 min. Repeat to make 8-10 pancakes.\r\n\r\nSTEP 3\r\nMeanwhile, put the remaining coconut milk and sugar in a small pan. Add a pinch of salt and simmer until the mixture thickens to the consistency of single cream. Use this as a sauce for the pancakes and spoon over some of the passion fruit seeds.', 25, 'coconut-pancakes.webp', 1, 1, 1, 0, 1),
(21, 'Vegan breakfast muffins', 'STEP 1\r\nHeat the oven to 200C/180C fan/gas 6. Line a muffin tin with cases. Mix 100g muesli with the light brown sugar, flour and baking powder in a bowl. Combine the milk, apple, oil and 2 tbsp nut butter in a jug, then stir into the dry mixture. Divide equally between the cases. Mix the remaining muesli with the demerara sugar, remaining nut butter and the pecans, and spoon over the muffins.\r\n\r\nSTEP 2\r\nBake for 25-30 mins or until the muffins are risen and golden.', 50, 'vegan-breakfast-muffins.webp', 1, 1, 1, 0, 0),
(22, 'Vegan French toast', 'STEP 1\r\nGently heat the maple syrup and blueberries in a saucepan until the berries start to pop and release their juices, then set them to one side in the pan. Whisk the flour, almonds, cinnamon, milk and vanilla together in a shallow bowl.\r\n\r\nSTEP 2\r\nHeat a little oil in a frying pan. Dip a slice of bread into the milk mixture, shake off any excess and fry the bread on both sides until it browns and crisps at the edges. Keep the slices warm in a low oven as you cook the rest. Serve with the blueberries spooned over and dust with icing sugar.', 40, 'french-toast.webp', 1, 1, 1, 0, 0),
(23, 'Tofu brekkie pancakes', 'STEP 1\r\nHeat oven to 180C/160C fan/gas 4. Scatter the nuts over a baking tray and cook for 5 mins until toasty and golden. Leave to cool, then chop. Turn the oven down low if you want to keep the whole batch of pancakes warm, although I think they are best enjoyed straight from the pan.\r\n\r\nSTEP 2\r\nPut the tofu, vanilla, lemon juice and 200ml of the milk into a deep jug or bowl. Using a stick blender, blend together until liquid, then keep going until it turns thick and smooth, like yogurt. Stir in the oil and the rest of the milk to loosen the mixture.\r\n\r\nSTEP 3\r\nPut the dry ingredients and 1 tsp salt in a large bowl and whisk to combine and aerate. If there are any lumps in the sugar, squish them with your fingers. Make a well in the centre, pour in the tofu mix and bring together to make a thick batter.\r\n\r\nSTEP 4\r\nHeat a large (ideally non-stick) frying pan and swirl around 1 tsp oil. For golden pancakes that don’t stick, the pan and oil should be hot enough to get an enthusiastic sizzle on contact with the batter, but not so hot that it scorches it. Test a drop.\r\n\r\nSTEP 5\r\nUsing a ladle or large serving spoon, drop in 3 spoonfuls of batter, easing it out gently in the pan to make pancakes that are about 12cm across. Cook for 2 mins on the first side or until bubbles pop over most of the surface. Loosen with a palette knife, then flip over the pancakes and cook for 1 min more or until puffed up and firm. Transfer to the oven to keep warm, if you need to, but don’t stack the pancakes too closely. Cook the rest of the batter, using a little more oil each time. Serve warm with sliced banana, berries, toasted nuts and a good drizzle of maple syrup or honey.', 20, 'tofu-brekkie-pancakes.webp', 1, 1, 1, 1, 1),
(24, 'Protein pancakes', 'STEP 1\r\nIn a small bowl stir the flaxseeds with 6 tbsp water and set aside to soak while you make the jam.\r\n\r\nSTEP 2\r\nMash the blueberries with a fork in a pan then set over a low-medium heat until syrupy and bubbling. Remove from the heat and stir in the chia seeds, maple syrup and lemon juice. Leave to cool slightly then transfer to a small serving jar.\r\n\r\nSTEP 3\r\nPut the ground almonds, milk, flour, banana, maple syrup and a pinch of salt in a blender. Stir the flax to make sure it has become thick and gloopy, like an egg, then tip into the mix and blitz until smooth and thick.\r\n\r\nSTEP 4\r\nHeat 1 tsp of coconut oil in a large frying pan over a medium heat and add tablespoon dollops of batter into the pan. Cook for a couple of mins on one side until the edges are browning, and bubbles have formed on top. Once the pale, white batter has turned a sandy colour, flip over with a spatula and cook for another few mins till dark golden brown. Set aside and keep warm while you repeat the process with the remaining batter, adding another tsp of coconut oil with each batch. You should make about 16 pancakes.\r\n\r\nSTEP 5\r\nPile the pancakes high between two plates, alternating the layers with spoonfuls of jam and yogurt. Dollop any remaining yogurt and another spoonful of jam on top then scatter over the nuts, seeds and berries to serve.', 40, 'protein-pancakes.webp', 1, 1, 1, 1, 0),
(25, 'Green rainbow smoothie bowl', 'STEP 1\r\nPut the spinach, avocado, mango, apple and almond milk in a blender, and blitz until smooth and thick. Divide between two bowls and top with the dragon fruit and berries.', 20, 'green-rainbow-smoothie-bowl.webp', 1, 1, 1, 1, 0),
(26, 'Tropical smoothie bowl', 'STEP 1\r\nPut the mango, pineapple, bananas, yogurt and coconut milk in a blender, and blitz until smooth and thick. Pour into two bowls and decorate with the passion fruit, blueberries, coconut flakes and mint leaves. Will keep in the fridge for 1 day. Add the toppings just before serving.', 20, 'tropical-smoothie-bowl.webp', 1, 1, 1, 1, 0),
(27, 'Raspberry ripple chia pudding', 'STEP 1\r\nDivide the chia seeds and coconut milk between two serving bowls and stir well. Leave to soak for 5 mins, stirring occasionally, until the seeds swell and thicken when stirred.\r\n\r\nSTEP 2\r\nMeanwhile, combine the purée ingredients in a small food processor, or blitz with a hand blender. Swirl a spoonful into each bowl, then arrange the nectarine or peach slices on top and scatter with the goji berries. Will keep in the fridge for 1 day. Add the toppings just before serving.', 15, 'raspberry-ripple-chia-pudding.webp', 1, 1, 1, 1, 0),
(28, 'Summer porridge', 'STEP 1\r\nIn a blender, blitz the milk, blueberries and maple syrup until the milk turns purple. Put the chia and oats in a mixing bowl, pour in the blueberry milk and stir very well. Leave to soak for 5 mins, stirring occasionally, until the liquid has absorbed, and the oats and chia thicken and swell.\r\n\r\nSTEP 2\r\nStir again, then divide between two bowls. Arrange the fruit on top, then sprinkle over the mixed seeds. Will keep in the fridge for 1 day. Add the toppings just before serving.', 20, 'summer-porridge.webp', 1, 1, 1, 0, 1),
(29, 'Vegan tomato and mushroom pancakes', 'STEP 1\r\nSift the flours and a pinch of salt into a blender. Add the soya milk and blend to make a smooth batter.\r\n\r\nSTEP 2\r\nHeat a little oil in a medium non-stick frying pan until very hot. Pour about 3 tbsp of the batter into the pan and cook over a medium heat until bubbles appear on the surface of the pancake. Flip the pancake over with a palette knife and cook the other side until golden brown. Repeat with the remaining batter, keeping the cooked pancakes warm as you go. You will make about 8.\r\n\r\nSTEP 3\r\nFor the topping, heat the oil in a frying pan. Cook the mushrooms until tender, add the tomatoes and cook for a couple of mins. Pour in the soy cream or milk and pine nuts, then gently cook until combined. Divide the pancakes between 2 plates, then spoon over the tomatoes and mushrooms. Scatter with chives.', 35, 'vegan-tomato-mushroom-pancakes.webp', 1, 1, 1, 0, 0),
(30, 'Mexican beans and avocado on toast', 'STEP 1\r\nMix the tomatoes, ¼ onion, lime juice and 1 tbsp oil and set aside. Fry the remaining onion in 2 tbsp oil until it starts to soften. Add the garlic, fry for 1 min, then add the cumin and chipotle and stir until fragrant. Tip in the beans and a splash of water, stir and cook gently until heated through. Stir in most of the tomato mixture and cook for 1 min, season well and add most of the coriander.\r\n\r\nSTEP 2\r\nToast the bread and drizzle with the remaining 1 tbsp oil. Put a slice on each plate and pile some beans on top. Arrange some slices of avocado on top, then sprinkle with the remaining tomato mixture and coriander leaves to serve.', 30, 'mexican-beans-and-avo.webp', 1, 1, 1, 0, 0),
(31, 'Three-grain porridge', 'STEP 1\r\nWorking in batches, toast the oatmeal, spelt flakes and barley in a large, dry frying pan for 5 mins until golden, then leave to cool and store in an airtight container.\r\n\r\nSTEP 2\r\nWhen you want to eat it, simply combine 50g of the porridge mixture in a saucepan with 300ml milk or water. Cook for 5 mins, stirring occasionally, then top with a drizzle of honey and strawberries, if you like (optional).', 10, 'three-grain-porridge.webp', 1, 1, 1, 0, 0),
(32, 'Orange and mint salad', 'STEP 1\r\nPeel then segment the oranges, removing the white pith. Place in a bowl along with any juices, then add the dates, chopped mint and rose syrup and toss gently. Divide between 4 dessert bowls, scatter on the mint leaves and serve.', 10, 'orange-mint-salad.webp', 1, 1, 1, 1, 0),
(33, 'Barley and bulgur chopped herb salad', 'STEP 1\r\nBring a pan of water to the boil and add the barley. Cover and cook for 25 mins, or until tender. Meanwhile, pour boiling water over the bulgur wheat to just cover, and set aside.\r\n\r\nSTEP 2\r\nHeat 2 tbsp oil in a large frying pan and add the onions. Cook for 20-25 mins, stirring regularly, until golden and caramelised. Stir in the garlic and cloves for 30 secs.\r\n\r\nSTEP 3\r\nDrain the barley and bulgur well and tip into a bowl. Add the remaining oil, the onions, and plenty of seasoning. Mix well and chill until you’re ready to serve (up to 24 hrs ahead is fine, or at least 1 hr). Remove from the fridge 30 mins before you want to serve.\r\n\r\nSTEP 4\r\nToss through the remaining ingredients and serve on a large platter or in a bowl.', 45, 'tabbouleh.webp', 1, 1, 1, 0, 1),
(34, 'Mustardy beetroot and lentil salad', 'STEP 1\r\nIf not using pre-cooked lentils, cook the lentils following pack instructions, drain and leave to cool. Meanwhile, combine the mustard, oil and some seasoning to make a dressing.\r\n\r\nSTEP 2\r\nTip the lentils into a bowl, pour over the dressing and mix well. Stir through the beetroot, tarragon and some seasoning, then serve.', 25, 'lentils.webp', 1, 1, 1, 1, 1),
(35, 'Watermelon, prawn and avocado salad', 'STEP 1\r\nPut the onion in a medium bowl with the garlic, chilli, lime juice, vinegar, sugar and some seasoning. Leave to marinate for 10 mins.\r\n\r\nSTEP 2\r\nAdd the watermelon, avocado, coriander and prawns, then toss gently to serve.', 15, 'watermelon-prawn-avocado-salad.webp', 1, 0, 0, 1, 1),
(36, 'Fruity lamb tagine', 'STEP 1\r\nHeat oven to 180C/160C fan/gas 4. Heat the oil in a casserole and brown the lamb on all sides. Scoop the lamb out onto a plate, then add the onion and carrots and cook for 2-3 mins until golden. Add the garlic and cook for 1 min more. Stir in the spices and tomatoes, and season. Tip the lamb back in with the chickpeas and apricots. Pour over the stock, stir and bring to a simmer. Cover the dish and place in the oven for 1 hr.\r\n\r\nSTEP 2\r\nIf the lamb is still a little tough, give it 20 mins more until tender. When ready, leave it to rest so it’s not piping hot, then serve scattered with pomegranate and herbs, with couscous or rice alongside.', 105, 'fruity-lamb-tagine.webp', 1, 0, 0, 0, 1),
(37, 'Easy chicken casserole', 'STEP 1\r\nHeat the oil in a large pan, add the chicken, then fry until lightly browned. Add the veg, then fry for a few mins more. Stir in the herbs and stock. Bring to the boil. Stir well, reduce the heat, then cover and cook for 40 mins, until the chicken is tender.\r\n\r\nSTEP 2\r\nStir the beans into the pan, then simmer for 5 mins. Stir in the parsley and serve with crusty bread.', 80, 'easy-chicken-casserole.webp', 1, 0, 0, 1, 1),
(38, 'Vegan burger', 'STEP 1\r\nWhizz the onion, red pepper, parsley and most of the chickpeas to a coarse paste. Don’t overdo this, you want a texture slightly rougher than hummus. Mash the remaining chickpeas and stir them into the paste with the garam masala, tomato purée, flour and polenta. Season well. \r\n\r\nSTEP 2\r\nShape the mixture into four patties. Let them rest for at least 30 mins – you can leave them overnight in the fridge if you like. The polenta needs time to absorb any extra liquid.\r\n\r\nSTEP 3\r\nHeat a little oil in a non-stick frying pan and cook the patties until they’re brown and crisp on each side. Try not to handle them too much as they’ll be quite soft when warm. Slide into buns or pitta with the accompaniments that you’d like.', 20, 'vegan-burger.webp', 1, 1, 1, 0, 1),
(39, 'Staffordshire oatcakes with mushrooms', 'STEP 1\r\nFor the oatcakes, tip the oats and 350ml water into a bowl and blitz with a stick blender until smooth (alternatively you can use a food processor or liquidizer). Stir in the flour and yeast, cover and leave in the fridge overnight, or leave at room temperature for 2-3 hrs until bubbles appear.\r\n\r\nSTEP 2\r\nUse kitchen paper to rub ½ tsp oil round a non-stick frying pan, then heat. Ladle in a quarter of the batter and swirl the pan to cover the base (the oatcakes should be a few millimeters thick, like a crêpe). Cook for 2 mins, then turn and cook for 2 mins more until golden. Make four oatcakes in the same way. If you\'re following our Healthy Diet Plan, chill two for another day. Will keep, covered in the fridge, for two days.\r\n\r\nSTEP 3\r\nTo make the topping for two oatcakes, heat 2 tsp oil in a non-stick pan, add 160g mushrooms and fry for 2-3 mins, stirring until softened. Stir in 2 tomatoes, then add 2 tbsp ground seeds and cook for 2 mins more. Reheat the oatcakes in a dry frying pan or the microwave if necessary, then spread each one with 1 tbsp tahini, the mushroom mixture and scatter with a little coriander before serving. On the second day, repeat step 3 with the remaining ingredients.', 35, 'staffordshire-oatcakes-with-mushrooms.webp', 1, 1, 1, 0, 1),
(40, 'Mustard salmon with pea and celeriac mash', 'STEP 1\r\nLine a grill pan with foil and lightly brush with oil to stop the salmon sticking. Add the salmon and spread each fillet with 1 tsp mustard. Curl up the edges of the foil to catch any juices, then squeeze over a little lemon juice. Heat the grill to medium.\r\n\r\nSTEP 2\r\nBoil the celeriac and potato for 15 mins. Add the peas, then cook for a further 5 mins until the vegetables are tender. Meanwhile, grill the salmon for 12-15 mins.\r\n\r\nSTEP 3\r\nDrain the vegetables, reserving a cup of the cooking water, then mash roughly so that the peas start to break up. Add a little of the cooking water to loosen the mix, if you like. Season to taste, then divide between two warm plates and top with the salmon. Pour over any pan juices, then serve.', 30, 'mustard-salmon-with-pea-celeriac-mash.webp', 1, 0, 0, 0, 1),
(41, 'Next level ratatouille', 'STEP 1\r\nHeat the grill to high. Lay the pepper quarters skin-side up on a baking tray and grill until the skins are black and charred. Tip into a bowl, cover and leave to cool. Peel the charred skin off the peppers, then cut into strips, and toss back in the juices collected in the bowl. Tie the basil stalks and thyme sprig together using kitchen string and set aside.\r\n\r\nSTEP 2\r\nHeat the oven to 160C/140C fan/ gas 4. Heat the olive oil in a flameproof casserole dish and fry the courgettes and aubergine for 15 mins until nicely browned. You may need to do this in batches, adding more oil to the pan as needed so the pan is never dry.\r\n\r\nSTEP 3\r\nScoop the veg out of the pan and set aside. Add a drizzle more oil, tip in the onion and cook for another 15 mins until softened and starting to brown. Add the garlic and leave to sizzle for a moment. Scatter with sugar, then leave for a minute to caramelise and splash in the vinegar. Stir in the cooked vegetables along with the pepper juice, season generously, pour over the cans of tomatoes and bring everything to a simmer.\r\n\r\nSTEP 4\r\nNestle in the herbs, cover the dish and transfer to the oven for 1 hr. Remove the lid and give it another 30 mins until everything is cooked down and jammy. Leave the ratatouille to cool until just warm, then stir through most of the basil leaves and the extra virgin olive oil. Scatter with the rest of the basil and serve with griddled sourdough. ', 140, 'ratatouille.webp', 1, 1, 1, 1, 1),
(42, 'Quinoa with stir-fried winter veg', 'STEP 1\r\nCook the quinoa according to pack instructions. Meanwhile, heat 3 tbsp of the oil in a wok or large pan, then add the garlic and quickly fry for 1 min. Throw in the carrots, leeks and broccoli, then stir-fry for 2 mins until everything is glistening.\r\n\r\nSTEP 2\r\nAdd the sundried tomatoes, mix together the stock and tomato purée, then add to the pan. Cover, then cook for 3 mins. Drain the quinoa, then toss in the remaining oil and the lemon juice. Divide between warm plates and spoon the vegetables on top.', 30, 'quinoa-with-stir-fried-winter-veg.webp', 1, 1, 1, 1, 1),
(43, 'Cajun grilled chicken with lime black-eyed bean salad', 'STEP 1\r\nMix together the oil, herbs, spices and garlic in a large sealable bag. Put the chicken breasts in the bag and mix thoroughly to cover. Bash the chicken with a rolling pin to flatten it a little, then set aside to marinate for at least 15 mins.\r\n\r\nSTEP 2\r\nIn a large bowl, mix all the ingredients for the bean salad. Stir well and set aside.\r\n\r\nSTEP 3\r\nHeat the grill. Line a grill pan with foil, place the chicken breasts on it and grill for 5 mins, checking occasionally. Once golden brown, turn and grill for a further 5-7 mins. Check the middle of the breasts after 5 mins and, if cooked through, remove from the heat.\r\n\r\nSTEP 4\r\nPlace 1 warm chicken breast on each plate, with some bean salad.', 25, 'cajun-chicken.webp', 1, 0, 0, 1, 1),
(44, 'Spiced carrot and lentil soup', 'STEP 1\r\nHeat a large saucepan and dry-fry 2 tsp cumin seeds and a pinch of chilli flakes for 1 min, or until they start to jump around the pan and release their aromas.\r\n\r\nSTEP 2\r\nScoop out about half with a spoon and set aside. Add 2 tbsp olive oil, 600g coarsely grated carrots, 140g split red lentils, 1l hot vegetable stock and 125ml coconut milk to the pan and bring to the boil.\r\n\r\nSTEP 3\r\nSimmer for 15 mins until the lentils have swollen and softened.\r\n\r\nSTEP 4\r\nWhizz the soup with a stick blender or in a food processor until smooth (or leave it chunky if you prefer).\r\n\r\nSTEP 5\r\nSeason to taste and finish with a dollop of dairy-free yogurt and a sprinkling of the reserved toasted spices. Serve with warmed naan bread.', 25, 'spiced-carrot-lentil-soup.webp', 1, 1, 1, 0, 1),
(45, 'Beef and swede casserole', 'STEP 1\r\nHeat the oil in a flameproof casserole dish over a medium-high heat. Fry the onions and celery for a few mins until turning brown. Add the beef and brown all over for 3-4 mins. Pour in the wine, if using, and let it reduce by half. Add the stock and toss in the swede, potatoes, thyme and bay leaf. Season and bring to the boil.\r\n\r\nSTEP 2\r\nReduce the heat, cover with a lid and leave for 1 hr. If you want to reduce the liquid a little, remove the lid, turn up the heat and cook for a further 10-15 mins or until the sauce has thickened.\r\n\r\nSTEP 3\r\nSeason to taste and remove the thyme sprigs and bay leaf. Serve with some green veg, if you like.', 100, 'beef-and-swede-casserole.webp', 1, 0, 0, 1, 1),
(46, 'Turkey piccata', 'STEP 1\r\nHeat oven to 200C/180C fan/ gas 6. Toss the potatoes with 2 tbsp of the oil, season and roast for 40-45 mins.\r\n\r\nSTEP 2\r\nHeat the remaining oil in a large frying pan. Season the turkey steaks and cook for 2-3 mins each side until cooked through, then remove and set aside. Add the garlic, capers, stock and lemon juice to the pan and bubble for 3-4 mins. Return the turkey to the pan to warm through. Stir in the dill and lemon zest, then serve with the potatoes and salad.', 55, 'turkey-piccata.webp', 1, 0, 0, 1, 1),
(47, 'Chilli tempeh stir-fry', 'STEP 1\r\nBoil the broccoli for 1 min 30 secs. Drain. \r\n\r\nSTEP 2\r\nHeat the oil in a non-stick pan. Stir-fry the tempeh for 2-3 mins, then put on a plate. Fry the garlic, ginger and chilli for 2 mins. Tip in the broccoli and toss.\r\n\r\nSTEP 3\r\nMix the gochujang with 2 tbsp water and the tempeh. Add to the pan with the seeds. Cook for 2 mins. Serve with rice, if you like.', 25, 'tempeh.webp', 1, 1, 1, 0, 1),
(48, 'Simple spicy fish stew', 'STEP 1\r\nHeat oil in a saucepan. Tip in the garlic, cumin and paprika and cook for 1 min. Add 100ml water and the tomatoes. Bring to the boil, then turn down the heat. Add the pepper, simmer for 5 mins. Add the fish, simmer for 5 mins. Serve with coriander and a wedge of lemon.', 20, 'simple-spicy-fish-stew.webp', 1, 0, 0, 0, 1),
(49, 'Leek and butter bean soup with crispy kale and bacon', 'STEP 1\r\nHeat 1 tbsp oil in a large saucepan over a low heat. Add the leeks, thyme and seasoning. Cover and cook for 15 mins until softened, adding a splash of water if the leeks start to stick. Add the butter beans with the water from the cans, the stock and mustard. Bring to the boil and simmer for 3-4 mins until hot. Blend the soup in a food processor or with a stick blender, stir through the parsley and check the seasoning.\r\n\r\nSTEP 2\r\nPut the bacon in a large, non-stick frying pan over a medium heat. Cook for 3-4 mins until crispy, then set side to cool. Add the remaining 1 tsp oil to the pan, and tip in the kale and hazelnuts. Cook for 2 mins, stirring until the kale is wilted and crisping at the edges and the hazelnuts are toasted. Cut the bacon into small pieces, then stir into the kale mixture.\r\n\r\nSTEP 3\r\nReheat the soup, adding a splash of water if it is too thick. Serve in bowls sprinkled with the bacon & kale mixture.', 40, 'leek-butter-bean-soup.webp', 1, 0, 0, 1, 1),
(50, 'Pasta salad with tuna, capers and balsamic dressing', 'STEP 1\r\nCook the pasta following pack instructions, then drain and rinse in cold water. After draining again, transfer to a large bowl. Add the remaining ingredients except the basil, season well, and toss to combine. Scatter with basil and serve.', 20, 'pasta-salad-with-tuna-capers-balsamic-dressing.webp', 1, 0, 0, 0, 1),
(51, 'Baked sea bass with lemon caper dressing', 'STEP 1\r\nTo make the dressing, mix the oil with the lemon zest and juice, capers, mustard, some seasoning and 1 tbsp water. Don\'t add the parsley yet (unless serving straight away) as the acid in the lemon will fade the colour if they are left together for too long.\r\n\r\nSTEP 2\r\nHeat the oven to 220C/200C fan/gas 7. Line a baking tray with baking parchment and put the fish, skin-side up, on top. Brush the skin with oil and sprinkle with some flaky salt. Bake for 7 mins or until the flesh flakes when tested with a knife. Arrange the fish on warm serving plates, spoon over the dressing and scatter with extra parsley leaves, if you like.', 20, 'baked-sea-bass-with-lemon-caper-dressing.webp', 1, 0, 0, 1, 1),
(52, 'Zesty lamb chops with crushed kidney beans', 'STEP 1\r\nHeat a griddle pan over a high heat. Brush the lamb chops with 1 tbsp oil, then rub all over with the lemon zest and some seasoning. Griddle for 3-4 mins each side for slightly pink meat, or a little longer for well done. You may need to do this in 2 batches. Remove from the pan, wrap in foil and leave to rest for 10 mins.\r\n\r\nSTEP 2\r\nGently fry the remaining oil, the chillies and garlic in a saucepan for 2-3 mins. Add the kidney beans and gently crush them with a potato masher, then continue to cook for 3 mins until the beans are warm. Stir in the lemon juice, mint and seasoning, and serve with the chops and mixed leaves.', 35, 'zesty-lamb-chops-with-crushed-kiney-beans.webp', 1, 0, 0, 1, 1),
(53, 'Honey and orange roast sea bass with lentils', 'STEP 1\r\nHeat oven to 200C/180C fan/gas 6. Place each sea bass fillet, skin-side down, on individual squares of foil. Mix together the orange zest, honey, mustard, 1 tbsp olive oil and some seasoning, and drizzle it over the fillets. Pull the sides of the foil up and twist the edges together to make individual parcels. Place the parcels on a baking tray and bake in the oven for 10 mins until the fish is just cooked and flakes easily when pressed with a knife.\r\n\r\nSTEP 2\r\nWarm the lentils following pack instructions, then mix with the orange juice, remaining oil, the watercress, herbs and seasoning. Divide the lentils between 2 plates and top each with a sea bass fillet. Drizzle over any roasting juices that are caught in the foil and serve immediately.', 25, 'honey-orange-roast-sea-bass-with-lentils.webp', 1, 0, 0, 1, 1),
(54, 'Florentine dairy-free pizza', 'STEP 1\r\nTo make the base, tip the flour into the bowl of a table-top mixer (or food processor with a dough attachment). Add 1 tsp salt to one side of the bowl and the yeast to the other. Add 275ml lukewarm water and mix on slow until a sticky dough forms. Turn up the mixer for 5-6 mins until an indent pushed into the dough pops out quickly. Put the dough in a lightly oiled bowl, then cover and leave in a warm place to prove until doubled in size.\r\n\r\nSTEP 2\r\nMeanwhile, heat the oil in a frying pan and sizzle the garlic for a few secs, then tip in the tomatoes, season and simmer for 5 mins until the sauce has thickened.\r\n\r\nSTEP 3\r\nHeat oven to 220C/200C fan/gas 7. Knead the dough for a few mins, then halve and roll each half as thinly as possible. Lay each base on a baking sheet dusted with the semolina. Divide the tomato sauce between the pizzas, spreading almost to the edge. Dot over the spinach, add your toppings and drizzle with a little oil. Cook for 5 mins, then crack an egg onto each pizza. Swap the baking sheets, then cook for 10 mins more or until bases are cooked through. Drizzle the basil and rocket with a drop of oil. Scatter over the pizza before eating.', 45, 'florentine-dairy-free-pizza.webp', 1, 0, 0, 0, 1),
(55, 'Blueberry and coconut cake', 'STEP 1\r\nHeat oven to 180C/160C fan/gas 4 and grease a 22cm Bundt or ring tin. Whisk the oil, eggs, sugar and vanilla in a large bowl. Combine the flour and coconut. Alternately, fold the flour mix and soya milk into the wet ingredients, starting and ending with the flour.\r\n\r\nSTEP 2\r\nSpoon a quarter into the tin. Fold the blueberries into the remaining batter, then spoon into the tin. Bake for 1-1¼ hrs, or until a skewer comes out clean. Cover the cake with foil if it browns too quickly.\r\n\r\nSTEP 3\r\nCool in tin for 10 mins, then turn out onto a wire rack and cool completely. Fill centre of the cake with extra blueberries and dust with icing sugar to serve.', 95, 'blueberry-coconut-cake.webp', 1, 1, 0, 0, 1),
(56, 'Carrot cake', 'STEP 1\r\nHeat the oven to 180C/160C fan/gas 4. Oil and line the base and sides of an 18cm square cake tin with baking parchment.\r\n\r\nSTEP 2\r\nTip the sugar, sunflower oil and eggs into a big mixing bowl. Lightly mix with a wooden spoon. Stir in the carrots, raisins and orange zest.\r\n\r\nSTEP 3\r\nSift the flour, bicarbonate of soda, cinnamon and nutmeg into the bowl. Mix everything together, the mixture will be soft and almost runny.\r\n\r\nSTEP 4\r\nPour the mixture into the prepared tin and bake for 40-45 mins or until it feels firm and springy when you press it in the centre.\r\n\r\nSTEP 5\r\nCool in the tin for 5 mins, then turn it out, peel off the paper and cool on a wire rack. (You can freeze the cake at this point if you want to serve it at a later date.)\r\n\r\nSTEP 6\r\nBeat the icing sugar and orange juice in a small bowl until smooth – you want the icing about as runny as single cream. Put the cake on a serving plate and boldly drizzle the icing back and forth in diagonal lines over the top, letting it drip down the sides.', 75, 'carrot-cake.webp', 1, 1, 0, 0, 1),
(57, 'Vegan rhubarb and custard bake', 'STEP 1\r\nHeat oven to 200C/180C fan/gas 6 and put the rhubarb in a roasting tin. Sprinkle over 25g of the caster sugar, add the vanilla bean paste, give the tin a shake and put it in the oven for 15 mins. Remove, pour away any liquid from the tin and leave the rhubarb to cool.\r\n\r\nSTEP 2\r\nReduce oven to 170C/150C fan/gas 31⁄2. Grease and line a 25 x 20cm cake tin with baking parchment. In a small bowl, mix the flaxseed with 6 tbsp water and set aside for 5 mins.\r\n\r\nSTEP 3\r\nIn a bowl, beat together the margarine, 100g of the custard, the flour, baking powder, vanilla extract and remaining sugar. Once this is well combined, light and fluffy, add the apple sauce and flaxseed mixture.\r\n\r\nSTEP 4\r\nPut a third of the mixture in the tin and top with a third of the rhubarb. Repeat twice more, then dot teaspoons of the remaining custard on top.\r\n\r\nSTEP 5\r\nBake in the oven for 45 mins, then cover with foil and bake for a further 30 mins or until golden brown and a skewer comes out clean when inserted in the middle. Serve warm as a pudding with soya custard, if you like. Or allow to cool completely, then sprinkle with icing sugar and enjoy as a cake. Eat the same day.', 95, 'rhubarb-bake.webp', 1, 1, 1, 0, 1),
(58, 'Spiced oatmeal fritters with coconut caramel pears', 'STEP 1\r\nIn a large saucepan, combine the almond milk, cloves, nutmeg and 3 tsp of the cinnamon. Bring to a simmer. Tip in the oats and cook for 6 mins over a low heat, stirring constantly, until thick and creamy, like porridge. Scrape into a mixing bowl, cover, and cool for 20 mins.\r\n\r\nSTEP 2\r\nWhile you wait, make the caramel pears. Sprinkle the sugar evenly over a frying pan set on a low heat. Don’t stir it, but wait until it starts to melt, turning dark golden here and there. When most of the sugar is melted, gently swirl to incorporate any dry patches. Stir in 25g of the coconut butter. Toss the pear slices in the remaining cinnamon, then add to the caramel and cook for 5 mins until softened. Set aside.\r\n\r\nSTEP 3\r\nReturn to the oats now, beating in the eggs and ½ tsp salt to make a loose pancake-like batter. Heat oven to 140C/120C fan/gas 1 and put plates in to warm.\r\n\r\nSTEP 4\r\nMelt a little of the remaining coconut butter in a frying pan. When hot, add half-ladlefuls of the batter spaced apart and cook for 4 mins each side, or until golden brown. Remove to a plate and keep warm in the oven. Continue frying the fritters, adding more coconut butter as needed. Serve the fritters topped with a spoonful of coconut yogurt followed by the warm pears.', 40, 'spiced-oatmeal-fritters-with-coconut-caramel-pears.webp', 1, 1, 0, 0, 1),
(59, 'Coconut crêpes with raspberry sauce', 'STEP 1\r\nSet aside 6 of the raspberries. Mix the cornflour with 1 tbsp water until smooth. Measure 300ml water in a pan, and stir in the cornflour paste. Heat, stirring, until thickened. Add the remaining raspberries and cook gently, mashing the berries to a pulp. Strain the mixture through a sieve into a bowl to remove the seeds, pushing through as much of the mixture as you can. Quarter the reserved raspberries and add to the sauce, along with the maple syrup.\r\n\r\nSTEP 2\r\nTo make the crêpes, tip the flour and a pinch of salt into a large jug, then beat in the eggs, coconut milk, 200ml water and 11/2 tbsp toasted coconut to make a batter the consistency of double cream. Thin with a little more water if it is too thick. Heat a small frying pan with a dash of oil, then pour in a little batter, swirling the pan so that it completely covers the base. Leave to set over the heat for 1 min, then carefully flip it over and cook the other side for a few secs more. Transfer to a plate and repeat with the remaining batter until you have at least 12. Stir the batter to redistribute the coconut as you use it. Serve 2 crêpes per person with a drizzle of the sauce and a little of the remaining toasted coconut.', 35, 'coconut-crepes-with-raspberry-sauce.webp', 1, 1, 0, 0, 1),
(60, 'Veggie breakfast bakes', 'STEP 1\r\nHeat oven to 200C/180C fan/gas 6. Put the mushrooms and tomatoes into 4 ovenproof dishes. Divide garlic between the dishes, drizzle over the oil and some seasoning, then bake for 10 mins.\r\n\r\nSTEP 2\r\nMeanwhile, put the spinach into a large colander, then pour over a kettle of boiling water to wilt it. Squeeze out any excess water, then add the spinach to the dishes. Make a little gap between the vegetables and crack an egg into each dish. Return to the oven and cook for a further 8-10 mins or until the egg is cooked to your liking.', 45, 'veggie-breakfast-bakes.webp', 1, 1, 0, 1, 1),
(61, 'Peanut butter and banana on toast', 'STEP 1\r\nToast bread and slice banana. Layer banana on one slice of toast and dust with cinnamon. Spread the second slice with peanut butter, then sandwich the two together and eat straight away.', 5, 'peanut-butter-banana-on-toast.webp', 1, 1, 0, 0, 1);
INSERT INTO `recipes` (`id`, `recipe_name`, `recipe_method`, `recipe_prep_time`, `recipe_img`, `anything`, `vegetarian`, `vegan`, `glutenfree`, `dairyfree`) VALUES
(62, 'Parsnip hash browns', 'STEP 1\r\nPeel and coarsely grate the potatoes and parsnips – if you’re using a food processor, attach the medium grater. Squeeze out as much liquid as possible with your hands and put them in a bowl.\r\n\r\nSTEP 2\r\nStir in the onion, garlic, egg and season if you like. Divide the mixture into six and roughly shape into flat cakes. Heat 2 tbsp of the oil in a large non-stick frying pan and fry three of the cakes on a low heat for 4-5 mins on each side until golden and tender. Transfer to kitchen paper with a slotted spoon and leave to cool while frying the remainder, adding remaining oil as necessary. Meanwhile grill the bacon and tomatoes, poach the eggs and serve alongside.', 35, 'parsnip-hash-browns.webp', 1, 0, 0, 1, 1),
(63, 'Chocolate chia pudding', 'STEP 1\r\nPut all the ingredients in a large bowl with a generous pinch of sea salt and whisk to combine. Cover with cling film then leave to thicken in the fridge for at least 4 hours, or overnight.\r\n\r\nSTEP 2\r\nSpoon the pudding into four glasses, then top with the frozen berries and cacao nibs.', 5, 'chocolate-chia-pudding.webp', 1, 1, 1, 1, 1),
(64, 'Chia and almond overnight oats', 'STEP 1\r\nTip the oats and seeds into a bowl and pour over the milk and vanilla extract. Leave for 5-10 mins for the oats to absorb some of the liquid.\r\n\r\nSTEP 2\r\nReserve 16 raspberries, then add the remainder to the oats and crush them into the mixture. Spoon into four tumblers or sundae dishes, then top with the yogurt and both lots of berries. Cover and chill overnight or until needed. To serve, pour 2 tbsp almond milk over each and scatter with the almonds.', 10, 'chia-almond-overnight-oats.webp', 1, 1, 1, 0, 1),
(65, 'Sunday morning baked eggs', 'STEP 1\r\nHeat oven to 160C/140C fan/gas 3 and bring a kettleful of water to the boil. Pour 1 tbsp oil into 4 shallow ramekins and crack 2 eggs into each. Season with sea salt and coarse black pepper, sprinkle with the tarragon and cheese, then spoon over the cream.\r\n\r\nSTEP 2\r\nSet the ramekins in a roasting tin, then quarter-fill the tin with water from the kettle. Carefully transfer to the oven and bake for 6-8 mins or until the egg whites are softly set and the yolks are runny. Serve immediately with the watercress on the side and Brummie bacon cakes (see \'Goes well with\', right), toast, or gluten-free alternative.', 20, 'sunday-morning-baked-eggs.webp', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  `amount` decimal(4,1) DEFAULT NULL,
  `unit` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`id`, `recipe_id`, `ingredient_id`, `amount`, `unit`) VALUES
(1, 1, 1, '1.5', NULL),
(2, 1, 2, '1.0', 'tsp'),
(3, 1, 3, '2.0', 'tbsp'),
(4, 1, 4, '0.5', NULL),
(5, 1, 5, NULL, 'to taste'),
(6, 1, 6, '1.0', 'tbsp'),
(7, 1, 7, '2.0', NULL),
(8, 1, 8, NULL, 'to taste'),
(9, 1, 9, NULL, 'to taste'),
(10, 2, 5, '0.5', NULL),
(11, 2, 10, '100.0', 'g'),
(12, 2, 9, NULL, 'to taste'),
(13, 2, 7, '2.0', NULL),
(14, 2, 4, '0.5', NULL),
(15, 2, 11, '0.5', 'tbsp'),
(16, 2, 12, '0.5', NULL),
(17, 2, 3, '1.0', 'tbsp'),
(18, 2, 13, '0.5', NULL),
(19, 2, 14, '0.5', NULL),
(20, 2, 15, NULL, 'to taste'),
(21, 2, 2, NULL, 'to taste'),
(22, 2, 16, NULL, 'to taste'),
(30, 3, 4, '0.5', NULL),
(31, 3, 5, '0.5', NULL),
(32, 3, 3, '1.0', 'tsp'),
(33, 3, 13, '0.5', NULL),
(34, 3, 1, '1.0', NULL),
(35, 3, 17, '1.0', NULL),
(36, 3, 8, NULL, 'to taste'),
(48, 4, 3, '1.0', 'tbsp'),
(49, 4, 18, '0.5', NULL),
(50, 4, 19, '0.5', NULL),
(51, 4, 20, '350.0', 'ml'),
(52, 4, 21, '0.5', NULL),
(53, 4, 22, '50.0', 'g'),
(54, 4, 23, '30.0', 'g'),
(55, 4, 24, '60.0', 'g'),
(56, 4, 25, '20.0', 'g'),
(57, 4, 26, NULL, 'to serve'),
(58, 4, 27, NULL, 'to taste'),
(59, 5, 13, '0.5', NULL),
(60, 5, 3, '2.0', 'tbsp'),
(61, 5, 28, '70.0', 'g'),
(62, 5, 29, '200.0', 'g'),
(63, 5, 14, '1.0', NULL),
(64, 5, 30, '0.5', 'tbsp'),
(65, 5, 21, '0.5', NULL),
(66, 5, 26, '1.0', NULL),
(67, 5, 31, '30.0', 'g'),
(68, 5, 32, '20.0', 'g'),
(69, 5, 33, NULL, 'to taste'),
(70, 6, 34, '2.0', 'slices'),
(71, 6, 29, '100.0', 'g'),
(72, 6, 35, '100.0', 'g'),
(73, 6, 36, '0.5', 'tbsp'),
(74, 6, 14, '0.5', NULL),
(75, 6, 3, '1.0', 'tsp'),
(76, 6, 32, '20.0', 'g'),
(77, 6, 31, '3.0', NULL),
(78, 6, 37, NULL, 'to taste'),
(90, 7, 38, '1.0', NULL),
(91, 7, 3, '2.0', 'tbsp'),
(92, 7, 21, '0.5', NULL),
(93, 7, 14, '0.5', NULL),
(94, 7, 39, '70.0', 'g'),
(95, 7, 40, '60.0', 'g'),
(96, 7, 41, '80.0', 'g'),
(97, 7, 42, NULL, 'to taste'),
(98, 7, 43, '1.0', NULL),
(99, 7, 37, NULL, 'to taste'),
(100, 7, 44, NULL, 'to taste'),
(113, 8, 45, '40.0', 'g'),
(114, 8, 3, '1.0', 'tsp'),
(115, 8, 23, '80.0', 'g'),
(116, 8, 21, '0.5', NULL),
(117, 8, 46, '2.0', 'tbsp'),
(118, 8, 14, '0.5', NULL),
(119, 8, 37, NULL, 'to taste'),
(120, 8, 47, NULL, 'to taste'),
(121, 8, 13, '0.5', NULL),
(122, 8, 35, '1.0', NULL),
(123, 8, 32, '20.0', 'g'),
(124, 8, 48, '10.0', 'g'),
(125, 9, 49, '60.0', 'g'),
(126, 9, 50, NULL, 'to dust'),
(127, 9, 51, '110.0', 'g'),
(128, 9, 52, '1.5', 'tbsp'),
(129, 9, 21, '0.5', NULL),
(130, 9, 53, '0.5', NULL),
(131, 9, 54, '30.0', 'g'),
(132, 9, 55, '0.5', NULL),
(133, 9, 3, NULL, 'to drizzle'),
(143, 10, 34, '2.0', 'slices'),
(144, 10, 56, '25.0', 'g'),
(145, 10, 3, '1.0', 'tsp'),
(146, 10, 57, '0.5', 'tsp'),
(147, 10, 58, '1.0', 'pinch'),
(148, 10, 14, '0.5', NULL),
(149, 10, 59, '45.0', 'g'),
(150, 10, 60, '1.0', NULL),
(151, 10, 48, '10.0', 'g'),
(152, 11, 22, '85.0', 'g'),
(153, 11, 61, NULL, 'to taste'),
(154, 11, 3, '1.0', 'tbsp'),
(155, 11, 39, '70.0', 'g'),
(156, 11, 28, '50.0', 'g'),
(157, 11, 31, '1.0', 'handful'),
(158, 11, 25, '35.0', 'g'),
(159, 12, 62, '125.0', 'g'),
(160, 12, 63, '2.0', 'tbsp'),
(161, 12, 64, '1.0', 'tbsp'),
(162, 12, 65, '150.0', 'g'),
(163, 12, 66, '0.5', 'tbsp'),
(164, 12, 3, '1.0', 'tbsp'),
(165, 12, 18, '0.5', NULL),
(166, 12, 14, '1.0', NULL),
(167, 12, 67, '2.0', NULL),
(168, 12, 5, '0.5', NULL),
(169, 13, 1, '0.5', NULL),
(170, 13, 68, '180.0', 'g'),
(171, 13, 69, '0.5', 'tsp'),
(172, 13, 3, '1.0', 'tbsp'),
(173, 13, 14, '0.5', NULL),
(174, 13, 70, '50.0', 'g'),
(175, 13, 71, NULL, 'to taste'),
(176, 13, 72, NULL, 'to taste'),
(177, 13, 5, '0.5', NULL),
(178, 13, 73, '1.0', NULL),
(179, 13, 62, '70.0', 'g'),
(180, 13, 9, NULL, 'to taste'),
(181, 14, 68, '100.0', 'g'),
(182, 14, 49, '100.0', 'g'),
(183, 14, 3, '1.0', 'tbsp'),
(184, 14, 40, '125.0', 'g'),
(185, 14, 35, '1.0', NULL),
(186, 14, 74, '1.0', 'handful'),
(187, 14, 48, '5.0', NULL),
(188, 14, 30, '1.0', 'tbsp'),
(189, 14, 36, NULL, 'to taste'),
(190, 14, 75, '2.0', 'tbsp'),
(202, 15, 49, '150.0', 'g'),
(203, 15, 73, '1.0', NULL),
(204, 15, 76, '25.0', 'g'),
(205, 15, 77, '25.0', 'g'),
(206, 15, 78, '40.0', 'ml'),
(207, 15, 79, '1.0', 'tsp'),
(208, 15, 80, NULL, 'to taste'),
(209, 15, 13, '0.5', NULL),
(210, 15, 3, '25.0', 'ml'),
(211, 15, 81, '1.0', 'tsp'),
(212, 15, 21, '0.5', NULL),
(269, 16, 1, '1.0', NULL),
(270, 16, 82, '1.0', 'tsp'),
(271, 16, 83, '0.5', 'tsp'),
(272, 16, 18, '0.5', NULL),
(273, 16, 14, '1.0', NULL),
(274, 16, 71, NULL, 'to taste'),
(275, 16, 84, NULL, 'to taste'),
(276, 16, 69, '0.5', 'tsp'),
(277, 16, 9, NULL, 'to taste'),
(278, 16, 85, NULL, 'to taste'),
(279, 16, 86, '0.5', 'tbsp'),
(280, 16, 41, '200.0', 'g'),
(281, 16, 29, '200.0', 'g'),
(282, 16, 21, NULL, 'to taste'),
(283, 17, 68, '350.0', 'g'),
(284, 17, 3, '2.0', 'tsp'),
(285, 17, 22, '100.0', 'g'),
(286, 17, 87, '2.0', 'tsp'),
(287, 17, 14, '1.0', NULL),
(288, 17, 21, '0.5', NULL),
(289, 17, 20, '100.0', 'ml'),
(290, 17, 88, '1.0', 'handful'),
(291, 18, 71, '7.0', 'g'),
(292, 18, 57, '1.0', 'tbsp'),
(293, 18, 89, '50.0', 'g'),
(294, 18, 90, '80.0', 'g'),
(295, 18, 91, '0.5', 'tbsp'),
(296, 18, 4, '0.5', NULL),
(297, 18, 73, '0.5', NULL),
(298, 18, 28, '20.0', 'g'),
(299, 18, 42, NULL, 'to taste'),
(300, 18, 92, '0.5', 'tsp'),
(301, 18, 93, '1.0', 'tbsp'),
(302, 19, 94, '1.0', NULL),
(303, 19, 6, '1.0', 'tbsp'),
(304, 19, 28, '7.0', NULL),
(305, 19, 3, NULL, NULL),
(306, 19, 81, '1.0', 'tsp'),
(307, 19, 95, '0.5', 'tsp'),
(308, 19, 2, '1.0', 'pinch'),
(309, 19, 96, '1.0', NULL),
(310, 19, 65, '175.0', 'g'),
(311, 19, 97, '1.0', 'tbsp'),
(312, 19, 85, '1.0', 'pinch'),
(313, 19, 14, '0.5', NULL),
(314, 19, 98, '2.0', NULL),
(315, 19, 99, '100.0', 'g'),
(316, 20, 50, '125.0', 'g'),
(317, 20, 100, '1.0', 'tsp'),
(318, 20, 79, '1.0', 'tbsp'),
(319, 20, 101, '200.0', 'ml'),
(320, 20, 102, NULL, NULL),
(321, 20, 103, '1.0', NULL),
(322, 20, 104, '1.0', NULL),
(323, 21, 111, '150.0', 'g'),
(324, 21, 112, '50.0', 'g'),
(325, 21, 50, '160.0', 'g'),
(326, 21, 100, '1.0', 'tsp'),
(327, 21, 113, '250.0', 'ml'),
(328, 21, 114, '1.0', NULL),
(329, 21, 82, '2.0', 'tbsp'),
(330, 21, 115, '3.0', 'tbsp'),
(331, 21, 116, '4.0', 'tbsp'),
(332, 21, 117, '50.0', 'g'),
(333, 22, 81, '3.0', 'tbsp'),
(334, 22, 118, '150.0', 'g'),
(335, 22, 50, '2.0', 'tbsp'),
(336, 22, 119, '2.0', 'tbsp'),
(337, 22, 120, '2.0', 'tsp'),
(338, 22, 121, '200.0', 'ml'),
(339, 22, 79, '1.0', 'tbsp'),
(340, 22, 122, '1.0', 'tsp'),
(341, 22, 34, '6.0', 'slices'),
(342, 22, 82, NULL, NULL),
(343, 22, 123, NULL, NULL),
(344, 23, 124, '25.0', 'g'),
(345, 23, 103, '1.5', NULL),
(346, 23, 125, '120.0', 'g'),
(347, 23, 126, NULL, NULL),
(348, 23, 65, '175.0', 'g'),
(349, 23, 122, '1.0', 'tsp'),
(350, 23, 36, '1.0', 'tsp'),
(351, 23, 127, '200.0', 'ml'),
(352, 23, 102, '1.0', 'tbsp'),
(353, 23, 128, '125.0', 'g'),
(354, 23, 129, '2.0', 'tbsp'),
(355, 23, 130, '0.5', 'tsp'),
(356, 23, 131, '0.5', 'tbsp'),
(357, 24, 132, '1.0', 'tbsp'),
(358, 24, 119, '10.0', 'g'),
(359, 24, 113, '150.0', 'ml'),
(360, 24, 133, '100.0', 'g'),
(361, 24, 103, '0.5', NULL),
(362, 24, 81, '2.0', 'tbsp'),
(363, 24, 82, NULL, NULL),
(364, 24, 118, '100.0', 'g'),
(365, 24, 134, '1.0', 'tbsp'),
(366, 24, 36, '1.0', 'tsp'),
(367, 24, 135, '50.0', 'g'),
(368, 24, 136, '0.5', 'tbsp'),
(369, 24, 137, '1.0', 'tsp'),
(370, 24, 138, NULL, NULL),
(378, 25, 74, '50.0', 'g'),
(379, 25, 4, '1.0', NULL),
(380, 25, 139, '1.0', NULL),
(381, 25, 114, '1.0', NULL),
(382, 25, 127, '200.0', 'ml'),
(383, 25, 140, '1.0', NULL),
(384, 25, 138, '100.0', 'g'),
(385, 26, 139, '1.0', NULL),
(386, 26, 141, '200.0', 'g'),
(387, 26, 103, '2.0', NULL),
(388, 26, 142, '2.0', 'tbsp'),
(389, 26, 101, '150.0', 'ml'),
(390, 26, 104, '2.0', NULL),
(391, 26, 118, '1.0', 'handful'),
(392, 26, 143, '2.0', 'tbsp'),
(393, 26, 37, NULL, NULL),
(394, 27, 134, '50.0', 'g'),
(395, 27, 101, '200.0', 'ml'),
(396, 27, 105, '1.0', NULL),
(397, 27, 106, '2.0', 'tbsp'),
(398, 27, 125, '100.0', 'g'),
(399, 27, 36, '1.0', 'tsp'),
(400, 27, 81, '2.0', 'tsp'),
(401, 28, 127, '150.0', 'ml'),
(402, 28, 118, '100.0', 'g'),
(403, 28, 81, '1.0', 'tsp'),
(404, 28, 134, '1.0', 'tbsp'),
(405, 28, 107, '50.0', 'g'),
(406, 28, 108, '1.0', NULL),
(407, 28, 109, '25.0', 'g'),
(408, 28, 110, '1.0', 'tsp'),
(409, 29, 144, '140.0', 'g'),
(410, 29, 145, '1.0', 'tsp'),
(411, 29, 113, '400.0', 'ml'),
(412, 29, 102, NULL, NULL),
(413, 29, 3, '2.0', 'tbsp'),
(414, 29, 146, '250.0', 'g'),
(415, 29, 28, '250.0', 'g'),
(416, 29, 147, '2.0', 'tbsp'),
(417, 29, 148, '1.0', 'handful'),
(418, 29, 149, NULL, 'to serve'),
(439, 30, 28, '130.0', 'g'),
(440, 30, 13, '0.5', NULL),
(441, 30, 5, NULL, NULL),
(442, 30, 3, '2.0', 'tbsp'),
(443, 30, 14, '1.0', NULL),
(444, 30, 16, '0.5', 'tsp'),
(445, 30, 150, '0.5', 'tsp'),
(446, 30, 10, '200.0', 'g'),
(447, 30, 9, NULL, NULL),
(448, 30, 34, '2.0', 'slices'),
(449, 30, 4, '0.5', NULL),
(450, 31, 151, '150.0', 'g'),
(451, 31, 152, '150.0', 'g'),
(452, 31, 153, '150.0', 'g'),
(453, 31, 154, NULL, 'to serve'),
(454, 31, 155, NULL, 'to serve'),
(455, 32, 156, '2.0', NULL),
(456, 32, 157, '6.0', NULL),
(457, 32, 37, NULL, NULL),
(458, 32, 158, '1.0', 'splash'),
(459, 33, 159, '30.0', 'g'),
(460, 33, 160, '30.0', 'g'),
(461, 33, 3, '1.0', 'tbsp'),
(462, 33, 18, '0.5', NULL),
(463, 33, 14, '1.0', NULL),
(464, 33, 161, '1.0', 'pinch'),
(465, 33, 162, NULL, 'to taste'),
(466, 33, 44, NULL, 'to taste'),
(467, 33, 37, NULL, 'to taste'),
(468, 33, 42, '0.5', NULL),
(469, 33, 41, '1.0', NULL),
(470, 33, 36, NULL, 'to taste'),
(471, 34, 70, '40.0', 'g'),
(472, 34, 163, '0.5', 'tsp'),
(473, 34, 3, '1.0', 'tbsp'),
(474, 34, 35, '60.0', 'g'),
(475, 34, 164, NULL, 'to taste'),
(476, 35, 13, '0.5', NULL),
(477, 35, 14, '0.5', NULL),
(478, 35, 55, '0.5', NULL),
(479, 35, 5, '0.5', NULL),
(480, 35, 165, '1.0', 'tsp'),
(481, 35, 79, '1.0', 'pinch'),
(482, 35, 166, '1.0', 'wedge'),
(483, 35, 4, '0.5', NULL),
(484, 35, 9, NULL, 'to taste'),
(485, 35, 167, '50.0', 'g'),
(486, 36, 3, '1.0', 'tbsp'),
(487, 36, 168, '200.0', 'g'),
(488, 36, 18, '0.5', NULL),
(489, 36, 73, '1.0', NULL),
(490, 36, 14, '1.0', NULL),
(491, 36, 169, '1.0', 'tsp'),
(492, 36, 170, '100.0', 'g'),
(493, 36, 29, '100.0', 'g'),
(494, 36, 171, '50.0', 'g'),
(495, 36, 172, '150.0', 'ml'),
(496, 36, 109, '30.0', 'g'),
(497, 36, 9, '1.0', 'handful'),
(498, 37, 3, '1.0', 'tbsp'),
(499, 37, 179, '100.0', 'g'),
(500, 37, 18, '0.5', NULL),
(501, 37, 73, '1.0', NULL),
(502, 37, 19, '1.0', NULL),
(503, 37, 180, '1.0', 'pinch'),
(504, 37, 20, '150.0', 'ml'),
(505, 37, 181, '200.0', 'g'),
(506, 37, 162, NULL, 'to taste'),
(507, 38, 18, '0.5', NULL),
(508, 38, 162, NULL, 'to taste'),
(509, 38, 29, '100.0', 'g'),
(510, 38, 69, '1.0', 'pinch'),
(511, 38, 182, '0.5', 'tsp'),
(512, 38, 50, '1.0', 'tsp'),
(513, 38, 183, '0.5', 'tsp'),
(514, 38, 102, NULL, 'for frying'),
(515, 38, 184, '1.0', NULL),
(516, 38, 185, '2.0', 'leaves'),
(517, 38, 41, '1.0', NULL),
(518, 38, 186, '0.5', NULL),
(519, 39, 187, '85.0', 'g'),
(520, 39, 188, '85.0', 'g'),
(521, 39, 189, '0.5', 'tsp'),
(522, 39, 102, '4.0', 'tsp'),
(523, 39, 146, '320.0', 'g'),
(524, 39, 41, '4.0', NULL),
(525, 39, 132, '2.0', 'tbsp'),
(526, 39, 134, '2.0', 'tbsp'),
(527, 39, 30, '4.0', 'tbsp'),
(528, 39, 9, NULL, 'to serve'),
(529, 40, 190, '140.0', 'g'),
(530, 40, 163, '1.0', 'tsp'),
(531, 40, 36, '1.0', 'squeeze'),
(532, 40, 191, '175.0', 'g'),
(533, 40, 94, '1.0', NULL),
(534, 40, 23, '70.0', 'g'),
(535, 41, 186, '1.5', NULL),
(536, 41, 33, '1.0', 'handful'),
(537, 41, 192, '1.0', NULL),
(538, 41, 3, '2.0', 'tbsp'),
(539, 41, 53, '1.0', NULL),
(540, 41, 193, '0.5', NULL),
(541, 41, 13, '0.5', NULL),
(542, 41, 14, '2.0', NULL),
(543, 41, 79, '1.0', 'pinch'),
(544, 41, 194, '1.0', 'tsp'),
(545, 41, 28, '400.0', 'g'),
(546, 41, 195, NULL, 'to serve'),
(547, 42, 196, '100.0', 'g'),
(548, 42, 3, '2.0', 'tbsp'),
(549, 42, 14, '1.0', NULL),
(550, 42, 73, '1.0', NULL),
(551, 42, 197, '100.0', 'g'),
(552, 42, 49, '100.0', 'g'),
(553, 42, 198, '30.0', 'g'),
(554, 42, 20, '100.0', 'ml'),
(555, 42, 182, '1.0', 'tsp'),
(556, 42, 36, NULL, 'to taste'),
(557, 43, 3, '1.0', 'tsp'),
(558, 43, 61, '0.5', 'tsp'),
(559, 43, 180, '0.5', 'tsp'),
(560, 43, 2, '0.5', 'tsp'),
(561, 43, 199, '1.0', 'pinch'),
(562, 43, 14, '0.5', NULL),
(563, 43, 200, '2.0', NULL),
(564, 43, 201, '100.0', 'g'),
(565, 43, 41, '1.0', NULL),
(566, 43, 202, '45.0', 'g'),
(567, 43, 43, '1.0', NULL),
(568, 43, 203, '20.0', 'g'),
(569, 43, 5, '0.5', NULL),
(570, 43, 9, NULL, 'to taste'),
(571, 44, 83, '1.0', 'tsp'),
(572, 44, 150, '1.0', 'pinch'),
(573, 44, 3, '1.0', 'tbsp'),
(574, 44, 73, '300.0', 'g'),
(575, 44, 204, '70.0', 'g'),
(576, 44, 20, '500.0', 'ml'),
(577, 44, 101, '60.0', 'ml'),
(578, 44, 63, NULL, 'to serve'),
(579, 44, 205, NULL, 'to serve'),
(580, 45, 3, '1.0', 'tbsp'),
(581, 45, 18, '1.0', NULL),
(582, 45, 19, '0.5', NULL),
(583, 45, 206, '250.0', 'g'),
(584, 45, 207, '100.0', 'ml'),
(585, 45, 208, '350.0', 'ml'),
(586, 45, 209, '250.0', 'g'),
(587, 45, 94, '150.0', 'g'),
(588, 45, 192, '1.0', NULL),
(589, 45, 210, '1.0', NULL),
(590, 46, 3, '1.0', 'tbsp'),
(591, 46, 211, '180.0', 'g'),
(592, 46, 212, '1.0', NULL),
(593, 46, 14, '0.5', NULL),
(594, 46, 87, '1.0', 'tbsp'),
(595, 46, 213, '60.0', 'ml'),
(596, 46, 21, '1.0', NULL),
(597, 46, 44, NULL, 'to taste'),
(598, 46, 214, NULL, 'to serve'),
(599, 47, 49, '150.0', 'g'),
(600, 47, 92, '1.0', 'tsp'),
(601, 47, 215, '75.0', 'g'),
(602, 47, 14, '1.0', NULL),
(603, 47, 71, NULL, 'to taste'),
(604, 47, 55, '0.5', NULL),
(605, 47, 216, '1.0', 'tsp'),
(606, 47, 93, '1.0', 'tsp'),
(607, 48, 3, '1.0', 'tbsp'),
(608, 48, 14, '0.5', NULL),
(609, 48, 16, '1.0', 'pinch'),
(610, 48, 2, '1.0', 'pinch'),
(611, 48, 170, '50.0', 'g'),
(612, 48, 186, '30.0', 'g'),
(613, 48, 217, '120.0', 'g'),
(614, 48, 9, NULL, 'to taste'),
(615, 48, 21, '0.5', NULL),
(616, 49, 3, '1.0', 'tbsp'),
(617, 49, 197, '250.0', 'g'),
(618, 49, 192, '2.0', NULL),
(619, 49, 218, '400.0', 'g'),
(620, 49, 20, '250.0', 'ml'),
(621, 49, 163, '1.0', 'tsp'),
(622, 49, 162, NULL, 'to taste'),
(623, 49, 219, '40.0', 'g'),
(624, 49, 220, '60.0', 'g'),
(625, 49, 221, '15.0', 'g'),
(626, 50, 222, '80.0', 'g'),
(627, 50, 223, '60.0', 'g'),
(628, 50, 87, '1.0', 'tsp'),
(629, 50, 224, '3.0', NULL),
(630, 50, 225, '0.5', NULL),
(631, 50, 28, '35.0', 'g'),
(632, 50, 226, NULL, 'to taste'),
(633, 50, 3, '1.0', 'tbsp'),
(634, 50, 88, '25.0', 'g'),
(635, 50, 33, '1.0', 'handful'),
(636, 51, 227, '100.0', 'g'),
(637, 51, 3, '1.0', 'tbsp'),
(638, 51, 36, NULL, 'to taste'),
(639, 51, 87, '1.0', 'tsp'),
(640, 51, 162, NULL, 'to taste'),
(641, 51, 228, NULL, 'to taste'),
(642, 51, 229, '0.5', 'tsp'),
(643, 52, 230, '2.0', NULL),
(644, 52, 3, '1.0', 'tbsp'),
(645, 52, 36, NULL, 'to taste'),
(646, 52, 228, NULL, 'to taste'),
(647, 52, 55, '0.5', NULL),
(648, 52, 14, '0.5', NULL),
(649, 52, 231, '200.0', 'g'),
(650, 52, 37, NULL, 'to taste'),
(651, 52, 59, NULL, 'to serve'),
(652, 53, 227, '1.0', NULL),
(653, 53, 232, NULL, 'to taste'),
(654, 53, 233, NULL, 'to taste'),
(655, 53, 126, '1.0', 'tsp'),
(656, 53, 163, '1.0', 'tsp'),
(657, 53, 3, '1.0', 'tbsp'),
(658, 53, 234, '125.0', 'g'),
(659, 53, 235, '50.0', 'g'),
(660, 53, 162, NULL, 'to taste'),
(661, 53, 44, NULL, 'to taste'),
(662, 54, 3, '2.0', 'tbsp'),
(663, 54, 14, '2.0', NULL),
(664, 54, 170, '400.0', 'g'),
(665, 54, 24, '400.0', 'g'),
(666, 54, 236, NULL, NULL),
(667, 54, 17, '2.0', NULL),
(668, 54, 33, '1.0', 'handful'),
(669, 54, 88, '2.0', 'handful'),
(670, 54, 237, '350.0', 'g'),
(671, 54, 238, '7.0', 'g'),
(672, 54, 239, '1.0', 'tbsp'),
(673, 55, 240, '250.0', 'ml'),
(674, 55, 17, '3.0', NULL),
(675, 55, 79, '225.0', 'g'),
(676, 55, 122, '2.0', 'tsp'),
(677, 55, 144, '300.0', 'g'),
(678, 55, 241, '50.0', 'g'),
(679, 55, 113, '175.0', 'ml'),
(680, 55, 118, '140.0', 'g'),
(681, 55, 123, NULL, 'to dust'),
(682, 56, 129, '175.0', 'g'),
(683, 56, 240, '175.0', 'ml'),
(684, 56, 17, '3.0', NULL),
(685, 56, 242, '140.0', 'g'),
(686, 56, 243, '100.0', 'g'),
(687, 56, 156, '1.0', NULL),
(688, 56, 144, '175.0', 'g'),
(689, 56, 244, '1.0', 'tsp'),
(690, 56, 245, '1.0', 'tsp'),
(691, 56, 246, '0.5', 'tsp'),
(692, 56, 123, '175.0', 'g'),
(693, 56, 232, '2.0', 'tbsp'),
(694, 57, 247, '250.0', 'g'),
(695, 57, 248, '275.0', 'g'),
(696, 57, 249, '1.0', 'tsp'),
(697, 57, 250, '250.0', 'g'),
(698, 57, 132, '2.0', 'tbsp'),
(699, 57, 251, '150.0', 'g'),
(700, 57, 144, '250.0', 'g'),
(701, 57, 100, '1.0', 'tsp'),
(702, 57, 122, '1.0', 'tsp'),
(703, 57, 252, '130.0', 'g'),
(704, 57, 123, NULL, 'to serve'),
(705, 58, 127, '250.0', 'ml'),
(706, 58, 161, '0.5', 'tsp'),
(707, 58, 246, '1.0', 'tsp'),
(708, 58, 245, '4.0', 'tsp'),
(709, 58, 253, '100.0', 'g'),
(710, 58, 17, '3.0', NULL),
(711, 58, 248, '2.0', 'tbsp'),
(712, 58, 254, '75.0', 'g'),
(713, 58, 60, '2.0', NULL),
(714, 58, 142, '200.0', 'g'),
(715, 59, 125, '200.0', 'g'),
(716, 59, 255, '2.0', 'tsp'),
(717, 59, 81, '2.0', 'tsp'),
(718, 59, 50, '140.0', 'g'),
(719, 59, 17, '2.0', NULL),
(720, 59, 101, '300.0', 'ml'),
(721, 59, 256, '2.0', 'tbsp'),
(722, 59, 240, NULL, 'for frying'),
(723, 60, 96, '4.0', NULL),
(724, 60, 41, '8.0', NULL),
(725, 60, 14, '1.0', NULL),
(726, 60, 3, '2.0', 'tbsp'),
(727, 60, 257, '200.0', 'g'),
(728, 60, 17, '4.0', NULL),
(729, 61, 34, '2.0', 'slices'),
(730, 61, 103, '1.0', NULL),
(731, 61, 245, '0.5', 'tsp'),
(732, 61, 6, '1.0', 'tbsp'),
(742, 62, 94, '450.0', 'g'),
(743, 62, 258, '350.0', 'g'),
(744, 62, 18, '1.0', NULL),
(745, 62, 14, '1.0', NULL),
(746, 62, 17, '7.0', NULL),
(747, 62, 3, '5.0', 'tbsp'),
(748, 62, 219, '6.0', 'slices'),
(749, 62, 28, '180.0', 'g'),
(750, 63, 134, '60.0', 'g'),
(751, 63, 259, '400.0', 'ml'),
(752, 63, 260, '3.0', 'tbsp'),
(753, 63, 81, '2.0', 'tbsp'),
(754, 63, 122, '0.5', 'tsp'),
(755, 63, 261, NULL, 'to taste'),
(756, 63, 262, NULL, 'to serve'),
(757, 64, 263, '200.0', 'g'),
(758, 64, 134, '50.0', 'g'),
(759, 64, 259, '600.0', 'ml'),
(760, 64, 122, '2.0', 'tsp'),
(761, 64, 125, '125.0', 'g'),
(762, 64, 264, '100.0', 'g'),
(763, 64, 118, '250.0', 'g'),
(764, 64, 265, '20.0', 'g'),
(765, 65, 3, '1.0', 'tbsp'),
(766, 65, 17, '2.0', NULL),
(767, 65, 164, '1.0', 'sprig'),
(768, 65, 266, '20.0', 'g'),
(769, 65, 267, '25.0', 'ml'),
(770, 65, 235, NULL, 'to serve'),
(771, 65, 34, '2.0', 'slices');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_meals`
--

CREATE TABLE `recipe_meals` (
  `id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `recipe_meal` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_meals`
--

INSERT INTO `recipe_meals` (`id`, `recipe_id`, `recipe_meal`) VALUES
(1, 1, 'lunch'),
(2, 1, 'dinner'),
(3, 2, 'lunch'),
(4, 2, 'dinner'),
(5, 3, 'lunch'),
(6, 3, 'dinner'),
(7, 4, 'lunch'),
(8, 4, 'dinner'),
(9, 5, 'lunch'),
(10, 5, 'dinner'),
(11, 6, 'lunch'),
(12, 7, 'lunch'),
(13, 7, 'dinner'),
(14, 8, 'lunch'),
(15, 8, 'dinner'),
(16, 9, 'lunch'),
(17, 9, 'dinner'),
(18, 10, 'lunch'),
(19, 10, 'dinner'),
(20, 11, 'lunch'),
(21, 11, 'dinner'),
(22, 12, 'lunch'),
(23, 12, 'dinner'),
(24, 13, 'lunch'),
(25, 13, 'dinner'),
(26, 14, 'lunch'),
(27, 14, 'dinner'),
(28, 15, 'lunch'),
(29, 15, 'dinner'),
(30, 16, 'lunch'),
(31, 16, 'dinner'),
(32, 17, 'lunch'),
(33, 17, 'dinner'),
(34, 18, 'lunch'),
(35, 18, 'dinner'),
(36, 19, 'breakfast'),
(37, 20, 'breakfast'),
(38, 21, 'breakfast'),
(39, 22, 'breakfast'),
(40, 23, 'breakfast'),
(41, 24, 'breakfast'),
(42, 25, 'breakfast'),
(43, 26, 'breakfast'),
(44, 27, 'breakfast'),
(45, 28, 'breakfast'),
(46, 29, 'breakfast'),
(47, 29, 'lunch'),
(48, 30, 'breakfast'),
(49, 30, 'lunch'),
(50, 31, 'breakfast'),
(51, 32, 'breakfast'),
(52, 33, 'lunch'),
(53, 33, 'dinner'),
(54, 34, 'lunch'),
(55, 34, 'dinner'),
(56, 35, 'lunch'),
(57, 35, 'dinner'),
(58, 36, 'lunch'),
(59, 36, 'dinner'),
(60, 37, 'lunch'),
(61, 37, 'dinner'),
(62, 38, 'lunch'),
(63, 38, 'dinner'),
(64, 39, 'lunch'),
(65, 39, 'dinner'),
(66, 40, 'lunch'),
(67, 40, 'dinner'),
(68, 41, 'lunch'),
(69, 41, 'dinner'),
(70, 42, 'lunch'),
(71, 42, 'dinner'),
(72, 43, 'lunch'),
(73, 43, 'dinner'),
(74, 44, 'lunch'),
(75, 44, 'dinner'),
(76, 45, 'lunch'),
(77, 45, 'dinner'),
(78, 46, 'lunch'),
(79, 46, 'dinner'),
(80, 47, 'lunch'),
(81, 47, 'dinner'),
(82, 48, 'lunch'),
(83, 48, 'dinner'),
(84, 49, 'lunch'),
(85, 49, 'dinner'),
(86, 50, 'lunch'),
(87, 50, 'dinner'),
(88, 51, 'lunch'),
(89, 51, 'dinner'),
(90, 52, 'lunch'),
(91, 52, 'dinner'),
(92, 53, 'lunch'),
(93, 53, 'dinner'),
(94, 54, 'lunch'),
(95, 54, 'dinner'),
(96, 55, 'breakfast'),
(97, 56, 'breakfast'),
(98, 57, 'breakfast'),
(99, 58, 'breakfast'),
(100, 59, 'breakfast'),
(101, 60, 'breakfast'),
(102, 61, 'breakfast'),
(103, 62, 'breakfast'),
(104, 63, 'breakfast'),
(105, 64, 'breakfast'),
(106, 65, 'breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `roles`, `password`) VALUES
(1, 'Angela', 'Candela', 'angelacandela@hotmail.it', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$3ET2s+kFi7ozznouaLjnIg$c8d1kCASv+8z4+nl5K/UV0hhpNysuEZRrwDZ0hcPUWI'),
(3, 'Andrea', 'Moro', 'andreamoro@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$76J7OLugZPr/2Jiqe8OZfw$PfJN/iLHTBkwYQiSTDiDdAD33HgIjDhLvNuZ8OZJUvU'),
(4, 'Pote', 'Potino', 'potepotino@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Uwy4AL6/eqjyiIVpQty7Hw$6T+l0quvSZ5XCzRDVqhJSY2kvi/98TjB92HdHoDQp0M'),
(6, 'Rosangela', 'Farina', 'sasy24@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$1oaiiS1lK5CMWwe/oD2hag$6E0K/SgDhm9liQMEDGVrbdmxXVO5SqqGY4BwNeeLxnY'),
(7, 'Erika', 'Campo', 'erikottera@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$8ax9HFLONFhTNS5ESbv5uA$cLe68uxurAVOMW7U7ke6SHwwIVFGrfxz7fZ69foueqg'),
(8, 'Marco', 'Strizzolo', 'strizzolo@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$j/HrURTV4kO1xpSy+n27bQ$vENdyU2wT0HJaxFCDvZ/8vHJcgpB/3B4Lt8Cc7c0K6s'),
(9, 'Federica', 'Botticelli', 'fedebot@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Uxqy6qN/cslIFAa5bJoYKQ$lJEts1hVjiSmfr17PQZ4F5D7BUbnHzxUJRD1uGlxKPk'),
(13, 'Jesús', 'Heras', 'jesusheras@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$5TtjW3gzXWy4xAKAUAbFTQ$KV4Z6uCcrLS30V0YRPKL4m2Uan2okcZknVioTb+wB54'),
(14, 'Esteban', 'Ayala', 'estebanayala@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NW2PexpBC6ghPW1bb23AIA$P8c/82GWUK/gmEFz6xtDXaxMYfmItNriGW12Pgfmy0Q'),
(15, 'Paola', 'Oddo', 'paolaoddo@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$djZsiOO2yXxXNIoew71EtA$TzL5IE7cHZReGVT2epFM4x/aFeGumh2leRw2MKrv7mI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4B60114F72CE90` (`ingredient_name`);

--
-- Indexes for table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8FAD7007A76ED395` (`user_id`);

--
-- Indexes for table `meal_plans_recipes`
--
ALTER TABLE `meal_plans_recipes`
  ADD PRIMARY KEY (`meal_plans_id`,`recipes_id`),
  ADD KEY `IDX_A7B8FF89E4567599` (`meal_plans_id`),
  ADD KEY `IDX_A7B8FF89FDF2B1FA` (`recipes_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9F925F2B59D8A214` (`recipe_id`),
  ADD KEY `IDX_9F925F2B933FE08C` (`ingredient_id`);

--
-- Indexes for table `recipe_meals`
--
ALTER TABLE `recipe_meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F43A32F559D8A214` (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `meal_plans`
--
ALTER TABLE `meal_plans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `recipe_meals`
--
ALTER TABLE `recipe_meals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD CONSTRAINT `FK_8FAD7007A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meal_plans_recipes`
--
ALTER TABLE `meal_plans_recipes`
  ADD CONSTRAINT `FK_A7B8FF89E4567599` FOREIGN KEY (`meal_plans_id`) REFERENCES `meal_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A7B8FF89FDF2B1FA` FOREIGN KEY (`recipes_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD CONSTRAINT `FK_9F925F2B59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `FK_9F925F2B933FE08C` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`);

--
-- Constraints for table `recipe_meals`
--
ALTER TABLE `recipe_meals`
  ADD CONSTRAINT `FK_F43A32F559D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
