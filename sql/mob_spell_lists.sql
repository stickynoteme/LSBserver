/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mob_spell_lists`
--

DROP TABLE IF EXISTS `mob_spell_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mob_spell_lists` (
  `spell_list_name` varchar(30) DEFAULT NULL,
  `spell_list_id` smallint(5) unsigned NOT NULL,
  `spell_id` smallint(3) unsigned NOT NULL,
  `min_level` tinyint(3) unsigned NOT NULL,
  `max_level` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`spell_list_id`,`spell_id`)
) ENGINE=Aria TRANSACTIONAL=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mob_spell_lists`
--

LOCK TABLES `mob_spell_lists` WRITE;
/*!40000 ALTER TABLE `mob_spell_lists` DISABLE KEYS */;
-- Beastmen_WHM (1)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,1,1,10);     -- cure (1~10)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,2,11,20);    -- cure_ii (11~20)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,3,21,40);    -- cure_iii (21~40)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,4,41,60);    -- cure_iv (41~60)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,5,61,79);    -- cure_v (61~79)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,21,50,94);   -- holy (50~94)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,22,95,255);  -- holy_ii (95~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,23,3,35);    -- dia (3~35)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,24,36,64);   -- dia_ii (36~64)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,25,65,255);  -- dia_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,28,5,29);    -- banish (5~29)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,29,30,60);   -- banish_ii (30~60)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,30,61,72);   -- banish_iii (61~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,31,73,255);  -- banish_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,33,18,54);   -- diaga (18~54)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,34,60,73);   -- diaga_ii (60~73)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,35,74,255);  -- diaga_iii (74~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,38,15,39);   -- banishga (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,39,40,68);   -- banishga_ii (40~68)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,40,69,255);  -- banishga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,43,7,26);    -- protect (7~26)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,44,27,46);   -- protect_ii (27~46)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,45,47,62);   -- protect_iii (47~62)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,46,63,75);   -- protect_iv (63~75)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,47,80,255);  -- protect_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,48,17,36);   -- shell (17~36)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,49,37,56);   -- shell_ii (37~56)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,50,57,67);   -- shell_iii (57~67)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,51,68,75);   -- shell_iv (68~75)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,52,80,255);  -- shell_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,53,19,255);  -- blink (19~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,54,28,255);  -- stoneskin (28~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,55,10,255);  -- aquaveil (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,59,15,255);  -- silence (15~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,108,21,43);  -- regen (21~43)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,110,44,65);  -- regen_ii (44~65)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,111,66,255); -- regen_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,112,45,255); -- flash (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,143,32,255); -- erase (32~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_WHM',1,477,86,255); -- regen_iv (86~255)

-- Beastmen_BLM (2)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,144,13,22);  -- fire (13~22)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,145,38,47);  -- fire_ii (38~47)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,146,62,67);  -- fire_iii (62~67)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,149,17,27);  -- blizzard (17~27)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,150,42,53);  -- blizzard_ii (42~53)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,151,64,68);  -- blizzard_iii (64~68)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,152,74,88);  -- blizzard_iv (74~88)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,154,9,18);   -- aero (9~18)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,155,34,44);  -- aero_ii (34~44)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,156,59,66);  -- aero_iii (59~66)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,159,1,10);   -- stone (1~10)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,160,26,35);  -- stone_ii (26~35)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,161,51,60);  -- stone_iii (51~60)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,162,68,73);  -- stone_iv (68~73)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,164,21,46);  -- thunder (21~46)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,165,46,55);  -- thunder_ii (46~55)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,166,66,70);  -- thunder_iii (66~70)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,167,75,92);  -- thunder_iv (75~92)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,169,5,12);   -- water (5~12)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,170,30,40);  -- water_ii (30~40)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,171,55,61);  -- water_iii (55~61)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,172,70,78);  -- water_iv (70~78)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,174,28,35);  -- firaga (28~35)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,175,53,60);  -- firaga_ii (53~60)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,176,69,90);  -- firaga_iii (69~90)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,179,32,39);  -- blizzaga (32~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,180,57,62);  -- blizzaga_ii (57~62)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,184,23,31);  -- aeroga (23~31)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,185,48,56);  -- aeroga_ii (48~56)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,186,67,71);  -- aeroga_iii (67~71)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,189,15,22);  -- stonega (15~22)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,190,40,47);  -- stonega_ii (40~47)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,191,63,67);  -- stonega_iii (63~67)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,194,36,43);  -- thundaga (36~43)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,195,61,65);  -- thundaga_ii (61~65)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,199,19,27);  -- waterga (19~27)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,200,44,52);  -- waterga_ii (44~52)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,206,50,255); -- freeze (50~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,208,52,255); -- tornado (52~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,212,56,255); -- burst (56~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,214,58,255); -- flood (58~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,220,3,17);   -- poison (3~17)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,221,43,64);  -- poison_ii (43~64)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,225,24,71);  -- poisonga (24~71)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,226,72,255); -- poisonga_ii (72~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,230,10,34);  -- bio (10~34)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,231,35,59);  -- bio_ii (35~59)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,232,60,255); -- bio_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,235,24,255); -- burn (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,236,22,255); -- frost (22~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,237,20,255); -- choke (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,238,18,255); -- rasp (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,239,16,255); -- shock (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,240,27,255); -- drown (27~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,247,25,82);  -- aspir (25~82)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,248,83,255); -- aspir_ii (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,249,10,255); -- blaze_spikes (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,253,20,40);  -- sleep (20~40)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,254,4,255);  -- blind (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,258,7,255);  -- bind (7~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,259,41,255); -- sleep_ii (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLM',2,274,56,255); -- sleepga_ii (56~255)

-- Beastmen_RDM (3)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,1,3,13);     -- cure (3~13)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,2,14,25);    -- cure_ii (14~25)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,3,26,48);    -- cure_iii (26~48)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,4,48,255);   -- cure_iv (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,23,1,30);    -- dia (1~30)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,24,31,59);   -- dia_ii (31~59)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,25,60,255);  -- dia_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,33,15,54);   -- diaga (15~54)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,34,55,70);   -- diaga_ii (55~70)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,35,71,255);  -- diaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,43,7,26);    -- protect (7~26)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,44,27,46);   -- protect_ii (27~46)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,45,47,62);   -- protect_iii (47~62)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,46,63,76);   -- protect_iv (63~76)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,47,80,255);  -- protect_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,48,17,36);   -- shell (17~36)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,49,37,56);   -- shell_ii (37~56)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,50,57,67);   -- shell_iii (57~67)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,51,68,86);   -- shell_iv (68~86)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,52,87,255);  -- shell_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,53,23,255);  -- blink (23~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,54,34,255);  -- stoneskin (34~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,55,12,255);  -- aquaveil (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,57,48,255);  -- haste (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,58,6,255);   -- paralyze (6~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,59,18,255);  -- silence (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,100,24,255); -- enfire (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,101,22,255); -- enblizzard (22~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,102,20,255); -- enaero (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,103,18,255); -- enstone (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,104,16,255); -- enthunder (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,105,27,255); -- enwater (27~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,108,21,75);  -- regen (21~75)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,110,80,255); -- regen_ii (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,144,19,49);  -- fire (19~49)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,145,50,70);  -- fire_ii (50~70)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,146,71,85);  -- fire_iii (71~85)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,147,86,255); -- fire_iv (86~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,149,24,54);  -- blizzard (24~54)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,150,55,72);  -- blizzard_ii (55~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,151,73,88);  -- blizzard_iii (73~88)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,152,89,255); -- blizzard_iv (89~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,154,14,44);  -- aero (14~44)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,155,45,68);  -- aero_ii (45~68)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,156,69,82);  -- aero_iii (69~82)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,157,83,255); -- aero_iv (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,159,4,34);   -- stone (4~34)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,160,35,64);  -- stone_ii (35~64)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,161,65,76);  -- stone_iii (65~76)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,162,77,255); -- stone_iv (77~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,164,29,59);  -- thunder (29~59)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,165,60,74);  -- thunder_ii (60~74)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,166,75,91);  -- thunder_iii (75~91)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,167,89,255); -- thunder_iv (89~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,169,9,39);   -- water (9~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,170,40,66);  -- water_ii (40~66)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,171,67,88);  -- water_iii (67~88)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,172,80,255); -- water_iv (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,216,21,255); -- gravity (21~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,220,5,45);   -- poison (5~45)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,221,46,255); -- poison_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,230,10,35);  -- bio (10~35)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,231,36,70);  -- bio_ii (36~70)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,232,71,255); -- bio_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,253,25,45);  -- sleep (25~45)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,254,8,255);  -- blind (8~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,258,11,255); -- bind (11~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,259,46,255); -- sleep_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_RDM',3,260,32,255); -- dispel (32~255)

-- Beastmen_PLD (4)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,1,5,16);     -- cure (5~16)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,2,17,29);    -- cure_ii (17~29)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,3,30,54);    -- cure_iii (30~54)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,28,7,33);    -- banish (7~33)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,29,34,65);   -- banish_ii (34~65)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,43,10,29);   -- protect (10~29)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,44,30,49);   -- protect_ii (30~49)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,45,50,69);   -- protect_iii (50~69)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,46,70,89);   -- protect_iv (70~89)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,47,90,255);  -- protect_v (90~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,48,20,39);   -- shell (20~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,49,40,59);   -- shell_ii (40~59)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,50,60,79);   -- shell_iii (60~79)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,51,80,255);  -- shell_iv (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_PLD',4,112,37,255); -- flash (37~255)

-- Beastmen_DRK (5)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,144,23,34);  -- fire (23~34)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,145,60,71);  -- fire_ii (60~71)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,146,88,255); -- fire_iii (88~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,149,29,41);  -- blizzard (29~41)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,150,66,78);  -- blizzard_ii (66~78)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,151,92,255); -- blizzard_iii (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,154,17,28);  -- aero (17~28)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,155,54,65);  -- aero_ii (54~65)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,156,84,91);  -- aero_iii (84~91)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,159,5,16);   -- stone (5~16)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,160,42,53);  -- stone_ii (42~53)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,161,76,83);  -- stone_iii (76~83)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,164,35,71);  -- thunder (35~71)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,165,72,83);  -- thunder_ii (72~83)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,166,96,255); -- thunder_iii (96~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,169,11,22);  -- water (11~22)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,170,48,59);  -- water_ii (48~59)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,171,80,87);  -- water_iii (80~87)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,220,6,45);   -- poison (6~45)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,221,46,255); -- poison_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,225,26,50);  -- poisonga (26~50)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,230,15,39);  -- bio (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,231,40,69);  -- bio_ii (40~69)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,232,68,255); -- bio_iii (68~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,242,61,255); -- absorb-acc (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,245,10,255); -- drain (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,247,20,255); -- aspir (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,252,37,255); -- stun (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,253,30,55);  -- sleep (30~55)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,258,20,255); -- bind (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,259,56,255); -- sleep_ii (56~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,272,33,255); -- absorb-chr (33~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_DRK',5,275,45,255); -- absorb-tp (45~255)

-- Beastmen_BRD (6)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,368,7,16);   -- foe_requiem (7~16)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,369,17,36);  -- foe_requiem_ii (17~36)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,370,37,46);  -- foe_requiem_iii (37~46)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,371,47,56);  -- foe_requiem_iv (47~56)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,372,57,66);  -- foe_requiem_v (57~66)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,373,67,75);  -- foe_requiem_vi (67~75)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,374,76,255); -- foe_requiem_vii (76~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,376,27,91);  -- horde_lullaby (27~91)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,377,92,255); -- horde_lullaby_ii (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,378,5,14);   -- armys_paeon (5~14)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,379,15,34);  -- armys_paeon_ii (15~34)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,380,35,44);  -- armys_paeon_iii (35~44)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,381,45,64);  -- armys_paeon_iv (45~64)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,382,65,77);  -- armys_paeon_v (65~77)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,383,78,255); -- armys_paeon_vi (78~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,389,1,20);   -- knights_minne (1~20)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,390,21,40);  -- knights_minne_ii (21~40)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,391,41,60);  -- knights_minne_iii (41~60)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,392,61,255); -- knights_minne_iv (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,394,3,22);   -- valor_minuet (3~22)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,395,23,42);  -- valor_minuet_ii (23~42)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,396,43,62);  -- valor_minuet_iii (43~62)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,397,63,255); -- valor_minuet_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,399,11,50);  -- sword_madrigal (11~50)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,400,51,255); -- blade_madrigal (51~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,403,13,52);  -- sheepfoe_mambo (13~52)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,404,53,255); -- dragonfoe_mambo (53~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,419,29,59);  -- advancing_march (29~59)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,420,60,255); -- victory_march (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,421,39,58);  -- battlefield_elegy (39~58)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,422,59,255); -- carnage_elegy (59~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,462,33,255); -- magic_finale (33~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BRD',6,463,16,255); -- foe_lullaby (16~255)

-- Beastmen_NIN (7)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,320,15,39);  -- katon_ichi (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,321,40,72);  -- katon_ni (40~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,322,73,255); -- katon_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,323,15,39);  -- hyoton_ichi (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,324,40,72);  -- hyoton_ni (40~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,325,73,255); -- hyoton_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,326,15,39);  -- huton_ichi (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,327,40,72);  -- huton_ni (40~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,328,73,255); -- huton_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,329,15,39);  -- doton_ichi (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,330,40,72);  -- doton_ni (40~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,331,73,255); -- doton_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,332,15,39);  -- raiton_ichi (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,333,40,72);  -- raiton_ni (40~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,334,73,255); -- raiton_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,335,15,39);  -- suiton_ichi (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,336,40,72);  -- suiton_ni (40~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,337,73,255); -- suiton_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,338,12,36);  -- utsusemi_ichi (12~36)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,339,37,72);  -- utsusemi_ni (37~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,340,73,255); -- utsusemi_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,341,30,64);  -- jubaku_ichi (30~64)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,342,65,255); -- jubaku_ni (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,344,23,47);  -- hojo_ichi (23~47)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,345,48,75);  -- hojo_ni (48~75)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,346,76,255); -- hojo_san (76~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,347,19,43);  -- kurayami_ichi (19~43)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,348,44,72);  -- kurayami_ni (44~72)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,349,73,255); -- kurayami_san (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,350,27,55);  -- dokumori_ichi (27~55)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,351,56,74);  -- dokumori_ni (56~74)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_NIN',7,352,76,255); -- dokumori_san (76~255)

-- Beastmen_BLU (8)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,517,8,255);  -- metallic_body (8~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,519,26,255); -- screwdriver (26~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,521,42,255); -- mp_drainkiss (42~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,524,1,255);  -- sandspin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,539,40,255); -- terror_touch (40~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,542,36,255); -- digest (36~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,545,48,255); -- sickle_slash (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,547,8,255);  -- cocoon (8~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,548,52,255); -- filamented_hold (52~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,549,1,255);  -- pollen (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,565,54,255); -- radiant_breath (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,569,38,255); -- jet_stream (38~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,572,32,255); -- sound_blast (32~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,573,64,255); -- feather_tickle (64~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,576,64,255); -- yawn (64~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,579,64,255); -- voracious_trunk (64~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,587,20,255); -- claw_cyclone (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,595,62,255); -- 1000_needles (62~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,596,36,255); -- pinecone_bomb (36~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,597,4,255);  -- sprout_smack (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,598,24,255); -- soporific (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,603,4,255);  -- wild_oats (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,604,61,255); -- bad_breath (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,606,46,255); -- awful_eye (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,610,65,255); -- infrasonics (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,621,66,255); -- sandspray (66~255)
INSERT INTO `mob_spell_lists` VALUES ('Beastmen_BLU',8,631,63,255); -- hydro_shot (63~255)

-- Worm (9)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,54,28,255);  -- stoneskin (28~255)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,159,1,25);   -- stone (1~25)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,160,26,50);  -- stone_ii (26~50)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,161,51,67);  -- stone_iii (51~67)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,162,68,76);  -- stone_iv (68~76)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,189,15,39);  -- stonega (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,190,40,63);  -- stonega_ii (40~63)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,238,18,50);  -- rasp (18~50)
INSERT INTO `mob_spell_lists` VALUES ('Worm',9,258,7,255);  -- bind (7~255)

-- Hecteyes (10)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,144,13,25);  -- fire (13~25)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,145,38,47);  -- fire_ii (38~47)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,146,62,72);  -- fire_iii (62~72)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,147,76,85);  -- fire_iv (76~85)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,154,9,33);   -- aero (9~33)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,155,34,47);  -- aero_ii (34~47)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,156,59,71);  -- aero_iii (59~71)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,164,21,45);  -- thunder (21~45)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,165,46,55);  -- thunder_ii (46~55)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,166,66,74);  -- thunder_iii (66~74)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,167,75,91);  -- thunder_iv (75~91)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,169,5,29);   -- water (5~29)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,170,30,54);  -- water_ii (30~54)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,171,55,66);  -- water_iii (55~66)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,172,70,79);  -- water_iv (70~79)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,174,28,52);  -- firaga (28~52)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,175,53,60);  -- firaga_ii (53~60)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,184,23,47);  -- aeroga (23~47)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,185,48,56);  -- aeroga_ii (48~56)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,194,36,60);  -- thundaga (36~60)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,195,61,72);  -- thundaga_ii (61~72)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,235,24,50);  -- burn (24~50)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,237,24,50);  -- choke (24~50)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,247,25,255); -- aspir (25~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,249,10,255); -- blaze_spikes (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,253,20,40);  -- sleep (20~40)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,254,4,255);  -- blind (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,258,7,255);  -- bind (7~255)
INSERT INTO `mob_spell_lists` VALUES ('Hecteyes',10,259,41,55);  -- sleep_ii (41~55)

-- Ahriman (11)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,144,13,22);  -- fire (13~22)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,145,38,47);  -- fire_ii (38~47)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,146,62,67);  -- fire_iii (62~67)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,154,9,16);   -- aero (9~16)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,155,34,41);  -- aero_ii (34~41)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,156,59,64);  -- aero_iii (59~64)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,164,21,34);  -- thunder (21~34)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,165,46,54);  -- thunder_ii (46~54)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,166,66,70);  -- thunder_iii (66~70)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,167,75,91);  -- thunder_iv (75~91)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,179,32,39);  -- blizzaga (32~39)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,180,57,62);  -- blizzaga_ii (57~62)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,184,23,31);  -- aeroga (23~31)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,185,48,57);  -- aeroga_ii (48~57)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,194,36,43);  -- thundaga (36~43)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,195,61,66);  -- thundaga_ii (61~66)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,199,19,27);  -- waterga (19~27)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,200,44,53);  -- waterga_ii (44~53)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,201,65,70);  -- waterga_iii (65~70)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,230,10,34);  -- bio (10~34)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,231,35,59);  -- bio_ii (35~59)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,232,60,255); -- bio_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,249,10,255); -- blaze_spikes (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,258,7,255);  -- bind (7~255)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('Ahriman',11,274,56,255); -- sleepga_ii (56~255)

-- Elemental_Air (12)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,53,19,255);  -- blink (19~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,59,15,255);  -- silence (15~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,102,20,255); -- enaero (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,154,9,33);   -- aero (9~33)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,155,34,58);  -- aero_ii (34~58)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,156,59,71);  -- aero_iii (59~71)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,184,23,47);  -- aeroga (23~47)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,185,48,66);  -- aeroga_ii (48~66)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,216,21,255); -- gravity (21~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Air',12,237,20,50);  -- choke (20~50)

-- Elemental_Earth (13)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,54,28,255);  -- stoneskin (28~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,56,13,74);   -- slow (13~74)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,79,75,255);  -- slow_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,103,18,255); -- enstone (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,159,1,25);   -- stone (1~25)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,160,26,50);  -- stone_ii (26~50)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,161,51,67);  -- stone_iii (51~67)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,162,68,76);  -- stone_iv (68~76)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,189,15,39);  -- stonega (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,190,40,62);  -- stonega_ii (40~62)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Earth',13,238,18,50);  -- rasp (18~50)

-- Elemental_Ice (14)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,101,22,255); -- enblizzard (22~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,149,17,41);  -- blizzard (17~41)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,150,42,63);  -- blizzard_ii (42~63)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,151,64,73);  -- blizzard_iii (64~73)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,152,74,88);  -- blizzard_iv (74~88)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,179,32,56);  -- blizzaga (32~56)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,180,57,70);  -- blizzaga_ii (57~70)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,236,22,50);  -- frost (22~50)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,250,20,255); -- ice_spikes (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Ice',14,258,7,255);  -- bind (7~255)

-- Elemental_Water (15)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,55,10,255);  -- aquaveil (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,105,27,255); -- enwater (27~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,169,5,29);   -- water (5~29)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,170,30,54);  -- water_ii (30~54)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,171,55,69);  -- water_iii (55~69)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,172,70,79);  -- water_iv (70~79)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,199,19,43);  -- waterga (19~43)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,200,44,64);  -- waterga_ii (44~64)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,220,3,42);   -- poison (3~42)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,221,43,255); -- poison_ii (43~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,225,24,59);  -- poisonga (24~59)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Water',15,240,27,50);  -- drown (27~50)

-- Elemental_Thunder (16)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,104,16,255); -- enthunder (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,164,21,45);  -- thunder (21~45)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,165,46,65);  -- thunder_ii (46~65)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,166,66,74);  -- thunder_iii (66~74)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,167,75,91);  -- thunder_iv (75~91)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,194,36,60);  -- thundaga (36~60)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,195,61,72);  -- thundaga_ii (61~72)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,239,16,50);  -- shock (16~50)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,251,30,255); -- shock_spikes (30~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Thunder',16,252,37,255); -- stun (37~255)

-- Elemental_Fire (17)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,100,24,255); -- enfire (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,144,13,37);  -- fire (13~37)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,145,38,61);  -- fire_ii (38~61)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,146,62,72);  -- fire_iii (62~72)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,174,28,52);  -- firaga (28~52)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,175,53,68);  -- firaga_ii (53~68)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,235,24,50);  -- burn (24~50)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Fire',17,249,10,255); -- blaze_spikes (10~255)

-- Elemental_Dark (18)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,230,10,35);  -- bio (10~35)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,231,36,59);  -- bio_ii (36~59)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,232,60,255); -- bio_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,242,61,255); -- absorb-acc (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,247,25,255); -- aspir (25~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,252,37,255); -- stun (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,260,32,255); -- dispel (32~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,272,33,255); -- absorb-chr (33~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,274,56,255); -- sleepga_ii (56~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Dark',18,275,45,255); -- absorb-tp (45~255)

-- Elemental_Light (19)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,1,1,10);     -- cure (1~10)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,2,11,20);    -- cure_ii (11~20)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,3,21,40);    -- cure_iii (21~40)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,4,41,60);    -- cure_iv (41~60)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,5,61,79);    -- cure_v (61~79)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,21,50,94);   -- holy (50~94)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,22,95,255);  -- holy_ii (95~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,23,1,30);    -- dia (1~30)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,24,31,59);   -- dia_ii (31~59)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,25,60,255);  -- dia_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,28,5,29);    -- banish (5~29)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,29,30,64);   -- banish_ii (30~64)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,30,65,89);   -- banish_iii (65~89)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,31,90,255);  -- banish_iv (90~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,38,15,39);   -- banishga (15~39)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,39,40,70);   -- banishga_ii (40~70)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,40,71,255);  -- banishga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,43,7,26);    -- protect (7~26)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,44,27,46);   -- protect_ii (27~46)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,45,47,62);   -- protect_iii (47~62)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,46,63,75);   -- protect_iv (63~75)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,47,76,255);  -- protect_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,48,17,36);   -- shell (17~36)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,49,37,56);   -- shell_ii (37~56)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,50,57,67);   -- shell_iii (57~67)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,51,68,75);   -- shell_iv (68~75)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,52,76,255);  -- shell_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,108,21,43);  -- regen (21~43)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,110,44,65);  -- regen_ii (44~65)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,111,66,85);  -- regen_iii (66~85)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,112,45,255); -- flash (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Elemental_Light',19,477,86,255); -- regen_iv (86~255)

-- Shadow_Lord (20)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,175,1,255); -- firaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,190,1,255); -- stonega_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,195,1,255); -- thundaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,200,1,255); -- waterga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,237,1,255); -- choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,238,1,255); -- rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,239,1,255); -- shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,240,1,255); -- drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shadow_Lord',20,254,1,255); -- blind (1~255)

-- Kam_Lanaut (21)
INSERT INTO `mob_spell_lists` VALUES ('Kam_Lanaut',21,356,76,255); -- paralyga (76~255)
INSERT INTO `mob_spell_lists` VALUES ('Kam_Lanaut',21,357,75,255); -- slowga (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Kam_Lanaut',21,359,75,255); -- silencega (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Kam_Lanaut',21,360,75,255); -- dispelga (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Kam_Lanaut',21,366,75,255); -- graviga (75~255)

-- Eald_Narche (22)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,204,75,255); -- flare (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,206,75,255); -- freeze (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,208,75,255); -- tornado (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,210,75,255); -- quake (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,212,75,255); -- burst (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,214,75,255); -- flood (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche',22,274,75,255); -- sleepga_ii (75~255)

-- Kirin (23)
INSERT INTO `mob_spell_lists` VALUES ('Kirin',23,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kirin',23,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kirin',23,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kirin',23,238,1,255); -- rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kirin',23,273,1,255); -- sleepga (1~255)

-- Genbu (24)
INSERT INTO `mob_spell_lists` VALUES ('Genbu',24,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Genbu',24,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Genbu',24,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Genbu',24,227,1,255); -- poisonga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Genbu',24,240,1,255); -- drown (1~255)

-- Seiryu (25)
INSERT INTO `mob_spell_lists` VALUES ('Seiryu',25,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Seiryu',25,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Seiryu',25,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Seiryu',25,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Seiryu',25,216,1,255); -- gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Seiryu',25,237,1,255); -- choke (1~255)

-- Byakko (26)
INSERT INTO `mob_spell_lists` VALUES ('Byakko',26,21,1,255); -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Byakko',26,25,1,255); -- dia_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Byakko',26,31,1,255); -- banish_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Byakko',26,35,1,255); -- diaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Byakko',26,40,1,255); -- banishga_iii (1~255)

-- Suzaku (27)
INSERT INTO `mob_spell_lists` VALUES ('Suzaku',27,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Suzaku',27,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Suzaku',27,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Suzaku',27,235,1,255); -- burn (1~255)

-- Undead (28)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,144,13,20);  -- fire (13~20)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,145,38,45);  -- fire_ii (38~45)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,146,62,72);  -- fire_iii (62~72)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,149,17,25);  -- blizzard (17~25)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,150,42,54);  -- blizzard_ii (42~54)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,151,64,67);  -- blizzard_iii (64~67)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,152,74,88);  -- blizzard_iv (74~88)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,154,9,15);   -- aero (9~15)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,155,34,41);  -- aero_ii (34~41)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,156,59,63);  -- aero_iii (59~63)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,159,1,8);    -- stone (1~8)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,160,26,34);  -- stone_ii (26~34)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,161,51,58);  -- stone_iii (51~58)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,162,68,72);  -- stone_iv (68~72)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,164,21,30);  -- thunder (21~30)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,165,46,54);  -- thunder_ii (46~54)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,166,66,69);  -- thunder_iii (66~69)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,167,75,92);  -- thunder_iv (75~92)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,169,5,29);   -- water (5~29)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,170,30,37);  -- water_ii (30~37)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,171,55,61);  -- water_iii (55~61)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,172,70,79);  -- water_iv (70~79)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,174,28,35);  -- firaga (28~35)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,175,53,60);  -- firaga_ii (53~60)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,179,32,39);  -- blizzaga (32~39)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,180,57,61);  -- blizzaga_ii (57~61)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,184,23,31);  -- aeroga (23~31)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,185,48,55);  -- aeroga_ii (48~55)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,189,15,22);  -- stonega (15~22)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,190,40,47);  -- stonega_ii (40~47)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,191,63,72);  -- stonega_iii (63~72)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,194,36,44);  -- thundaga (36~44)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,195,61,64);  -- thundaga_ii (61~64)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,199,19,27);  -- waterga (19~27)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,200,44,47);  -- waterga_ii (44~47)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,206,50,255); -- freeze (50~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,220,3,25);   -- poison (3~25)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,221,43,64);  -- poison_ii (43~64)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,225,24,69);  -- poisonga (24~69)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,226,70,255); -- poisonga_ii (70~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,230,10,34);  -- bio (10~34)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,231,35,59);  -- bio_ii (35~59)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,232,60,255); -- bio_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,236,22,50);  -- frost (22~50)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,247,25,82);  -- aspir (25~82)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,248,83,255); -- aspir_ii (83~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,250,20,255); -- ice_spikes (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,253,20,255); -- sleep (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,254,4,255);  -- blind (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,258,7,255);  -- bind (7~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,259,41,255); -- sleep_ii (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('Undead',28,274,56,255); -- sleepga_ii (56~255)

-- Mammet (29)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,174,43,44); -- firaga (43~44)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,175,60,60); -- firaga_ii (60~60)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,176,75,75); -- firaga_iii (75~75)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,179,43,44); -- blizzaga (43~44)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,180,60,60); -- blizzaga_ii (60~60)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,181,75,75); -- blizzaga_iii (75~75)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,184,43,44); -- aeroga (43~44)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,185,60,60); -- aeroga_ii (60~60)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,186,75,75); -- aeroga_iii (75~75)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,189,43,44); -- stonega (43~44)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,190,60,60); -- stonega_ii (60~60)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,191,75,75); -- stonega_iii (75~75)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,194,43,44); -- thundaga (43~44)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,195,60,60); -- thundaga_ii (60~60)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,196,75,75); -- thundaga_iii (75~75)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,199,43,44); -- waterga (43~44)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,200,60,60); -- waterga_ii (60~60)
INSERT INTO `mob_spell_lists` VALUES ('Mammet',29,201,75,75); -- waterga_iii (75~75)

-- Yagudo_SMN (30)
INSERT INTO `mob_spell_lists` VALUES ('Yagudo_SMN',30,288,1,255); -- fire_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yagudo_SMN',30,290,1,255); -- air_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yagudo_SMN',30,291,1,255); -- earth_spirit (1~255)

-- Kindred_SMN (31)
INSERT INTO `mob_spell_lists` VALUES ('Kindred_SMN',31,289,1,255); -- ice_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kindred_SMN',31,292,1,255); -- thunder_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kindred_SMN',31,295,1,255); -- dark_spirit (1~255)

-- Tonberry_SMN (32)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_SMN',32,288,1,255); -- fire_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_SMN',32,293,1,255); -- water_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_SMN',32,294,1,255); -- light_spirit (1~255)

-- Lamiae_SMN (33)
INSERT INTO `mob_spell_lists` VALUES ('Lamiae_SMN',33,289,1,255); -- ice_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lamiae_SMN',33,293,1,255); -- water_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lamiae_SMN',33,295,1,255); -- dark_spirit (1~255)

-- Fomor_SMN (34)
INSERT INTO `mob_spell_lists` VALUES ('Fomor_SMN',34,288,1,255); -- fire_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fomor_SMN',34,289,1,255); -- ice_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fomor_SMN',34,290,1,255); -- air_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fomor_SMN',34,291,1,255); -- earth_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fomor_SMN',34,292,1,255); -- thunder_spirit (1~255)

-- Aern_SMN (35)
INSERT INTO `mob_spell_lists` VALUES ('Aern_SMN',35,288,1,255); -- fire_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_SMN',35,290,1,255); -- air_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_SMN',35,292,1,255); -- thunder_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_SMN',35,293,1,255); -- water_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_SMN',35,294,1,255); -- light_spirit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_SMN',35,295,1,255); -- dark_spirit (1~255)

-- MagicPot (36)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,144,13,22);  -- fire (13~22)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,145,38,47);  -- fire_ii (38~47)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,146,62,67);  -- fire_iii (62~67)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,149,17,27);  -- blizzard (17~27)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,150,42,53);  -- blizzard_ii (42~53)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,151,64,68);  -- blizzard_iii (64~68)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,152,74,88);  -- blizzard_iv (74~88)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,154,9,18);   -- aero (9~18)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,155,34,44);  -- aero_ii (34~44)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,156,59,66);  -- aero_iii (59~66)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,159,1,10);   -- stone (1~10)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,160,26,35);  -- stone_ii (26~35)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,161,51,60);  -- stone_iii (51~60)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,162,68,73);  -- stone_iv (68~73)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,164,21,46);  -- thunder (21~46)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,165,46,55);  -- thunder_ii (46~55)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,166,66,70);  -- thunder_iii (66~70)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,167,75,92);  -- thunder_iv (75~92)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,169,5,12);   -- water (5~12)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,170,30,40);  -- water_ii (30~40)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,171,55,61);  -- water_iii (55~61)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,172,70,78);  -- water_iv (70~78)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,174,28,35);  -- firaga (28~35)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,175,53,60);  -- firaga_ii (53~60)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,176,69,90);  -- firaga_iii (69~90)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,179,32,39);  -- blizzaga (32~39)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,180,57,62);  -- blizzaga_ii (57~62)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,184,23,31);  -- aeroga (23~31)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,185,48,56);  -- aeroga_ii (48~56)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,186,67,71);  -- aeroga_iii (67~71)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,189,15,22);  -- stonega (15~22)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,190,40,47);  -- stonega_ii (40~47)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,191,63,67);  -- stonega_iii (63~67)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,194,36,43);  -- thundaga (36~43)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,195,61,65);  -- thundaga_ii (61~65)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,199,19,27);  -- waterga (19~27)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,200,44,52);  -- waterga_ii (44~52)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,208,52,255); -- tornado (52~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,214,58,255); -- flood (58~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,220,3,17);   -- poison (3~17)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,221,43,64);  -- poison_ii (43~64)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,225,24,71);  -- poisonga (24~71)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,226,72,255); -- poisonga_ii (72~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,230,10,34);  -- bio (10~34)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,231,35,64);  -- bio_ii (35~64)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,232,65,255); -- bio_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,247,25,82);  -- aspir (25~82)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,248,83,255); -- aspir_ii (83~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,249,10,255); -- blaze_spikes (10~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,253,20,40);  -- sleep (20~40)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,254,4,255);  -- blind (4~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,258,7,255);  -- bind (7~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,259,41,255); -- sleep_ii (41~255)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('MagicPot',36,274,56,255); -- sleepga_ii (56~255)

-- ArkAngelEV (37)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,4,1,255);   -- cure_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,14,1,255);  -- poisona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,15,1,255);  -- paralyna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,16,1,255);  -- blindna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,17,1,255);  -- silena (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,18,1,255);  -- stona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,25,1,255);  -- dia_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,31,1,255);  -- banish_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,34,1,255);  -- diaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,108,1,255); -- regen (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelEV',37,112,1,255); -- flash (1~255)

-- ArkAngelHM (38)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelHM',38,338,1,255); -- utsusemi_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelHM',38,339,1,255); -- utsusemi_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelHM',38,342,1,255); -- jubaku_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelHM',38,345,1,255); -- hojo_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelHM',38,348,1,255); -- kurayami_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelHM',38,351,1,255); -- dokumori_ni (1~255)

-- ArkAngelTT (39)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,145,1,255); -- fire_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,150,1,255); -- blizzard_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,155,1,255); -- aero_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,160,1,255); -- stone_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,165,1,255); -- thunder_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,170,1,255); -- water_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,220,1,255); -- poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,225,1,255); -- poisonga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,249,1,255); -- blaze_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,259,1,255); -- sleep_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,266,1,255); -- absorb-str (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,268,1,255); -- absorb-vit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,272,1,255); -- absorb-chr (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('ArkAngelTT',39,275,1,255); -- absorb-tp (1~255)

-- Goblin_Statue (40)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Statue',40,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Statue',40,128,1,255); -- protectra_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Statue',40,133,1,255); -- shellra_iv (1~255)

-- Mother_Globe (41)
INSERT INTO `mob_spell_lists` VALUES ('Mother_Globe',41,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mother_Globe',41,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mother_Globe',41,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mother_Globe',41,239,1,255); -- shock (1~255)

-- EvilWeapon (42)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,1,3,13);     -- cure (3~13)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,2,14,25);    -- cure_ii (14~25)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,3,26,48);    -- cure_iii (26~48)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,4,48,255);   -- cure_iv (48~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,23,1,30);    -- dia (1~30)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,24,31,59);   -- dia_ii (31~59)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,25,60,255);  -- dia_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,33,15,54);   -- diaga (15~54)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,34,55,70);   -- diaga_ii (55~70)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,35,71,255);  -- diaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,43,7,26);    -- protect (7~26)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,44,27,46);   -- protect_ii (27~46)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,45,47,62);   -- protect_iii (47~62)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,46,63,76);   -- protect_iv (63~76)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,47,80,255);  -- protect_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,48,17,36);   -- shell (17~36)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,49,37,56);   -- shell_ii (37~56)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,50,57,67);   -- shell_iii (57~67)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,51,68,86);   -- shell_iv (68~86)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,52,87,255);  -- shell_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,53,23,255);  -- blink (23~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,54,34,255);  -- stoneskin (34~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,55,12,255);  -- aquaveil (12~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,57,48,255);  -- haste (48~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,58,6,255);   -- paralyze (6~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,59,18,255);  -- silence (18~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,104,16,255); -- enthunder (16~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,105,27,255); -- enwater (27~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,108,21,75);  -- regen (21~75)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,110,80,255); -- regen_ii (80~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,144,19,49);  -- fire (19~49)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,145,50,70);  -- fire_ii (50~70)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,146,71,85);  -- fire_iii (71~85)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,147,86,255); -- fire_iv (86~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,149,24,54);  -- blizzard (24~54)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,150,55,72);  -- blizzard_ii (55~72)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,151,73,88);  -- blizzard_iii (73~88)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,152,89,255); -- blizzard_iv (89~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,154,14,44);  -- aero (14~44)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,155,45,68);  -- aero_ii (45~68)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,156,69,82);  -- aero_iii (69~82)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,157,83,255); -- aero_iv (83~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,159,4,34);   -- stone (4~34)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,160,35,64);  -- stone_ii (35~64)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,161,65,76);  -- stone_iii (65~76)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,162,77,255); -- stone_iv (77~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,164,29,59);  -- thunder (29~59)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,165,60,74);  -- thunder_ii (60~74)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,166,75,91);  -- thunder_iii (75~91)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,167,89,255); -- thunder_iv (89~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,169,9,39);   -- water (9~39)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,170,40,66);  -- water_ii (40~66)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,171,67,88);  -- water_iii (67~88)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,172,80,255); -- water_iv (80~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,216,21,255); -- gravity (21~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,230,10,35);  -- bio (10~35)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,231,36,74);  -- bio_ii (36~74)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,232,75,255); -- bio_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,253,25,45);  -- sleep (25~45)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,259,46,255); -- sleep_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('EvilWeapon',42,260,32,255); -- dispel (32~255)

-- WesternSphinx (43)
INSERT INTO `mob_spell_lists` VALUES ('WesternSphinx',43,357,1,255); -- slowga (1~255)

-- EasternSphinx (44)
INSERT INTO `mob_spell_lists` VALUES ('EasternSphinx',44,360,1,255); -- dispelga (1~255)

-- Roc_BRD (45)
INSERT INTO `mob_spell_lists` VALUES ('Roc_BRD',45,376,1,255); -- horde_lullaby (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Roc_BRD',45,423,1,255); -- massacre_elegy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Roc_BRD',45,462,1,255); -- magic_finale (1~255)

-- Serket (46)
INSERT INTO `mob_spell_lists` VALUES ('Serket',46,362,1,255); -- bindga (1~255)

-- Goblin_Golem (47)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,14,6,255);  -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,15,9,255);  -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,16,14,255); -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,17,19,255); -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,18,39,255); -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,19,34,255); -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,20,29,255); -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,128,1,255); -- protectra_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,133,1,255); -- shellra_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Golem',47,367,1,255); -- death (1~255)

-- Gu_Dha_Effigy (48)
INSERT INTO `mob_spell_lists` VALUES ('Gu_Dha_Effigy',48,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gu_Dha_Effigy',48,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gu_Dha_Effigy',48,365,1,255); -- breakga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gu_Dha_Effigy',48,366,1,255); -- graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gu_Dha_Effigy',48,367,1,255); -- death (1~255)

-- Overlord_s_Tombstone (49)
INSERT INTO `mob_spell_lists` VALUES ('Overlord_s_Tombstone',49,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Overlord_s_Tombstone',49,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Overlord_s_Tombstone',49,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Overlord_s_Tombstone',49,366,1,255); -- graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Overlord_s_Tombstone',49,367,1,255); -- death (1~255)

-- Tzee_Xicu_Idol (50)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,152,74,88);  -- blizzard_iv (74~88)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,167,75,92);  -- thunder_iv (75~92)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,172,70,78);  -- water_iv (70~78)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,186,67,71);  -- aeroga_iii (67~71)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,189,15,22);  -- stonega (15~22)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,190,40,47);  -- stonega_ii (40~47)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,191,63,67);  -- stonega_iii (63~67)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,194,36,43);  -- thundaga (36~43)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,195,61,65);  -- thundaga_ii (61~65)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Tzee_Xicu_Idol',50,367,1,255);  -- death (1~255)

-- Vanguard_s_Hecteyes (51)
INSERT INTO `mob_spell_lists` VALUES ('Vanguard_s_Hecteyes',51,360,1,255); -- dispelga (1~255)

-- Vanguard_s_Crow (52)
INSERT INTO `mob_spell_lists` VALUES ('Vanguard_s_Crow',52,359,1,255); -- silencega (1~255)

-- Vanguard_s_Scorpion (53)
INSERT INTO `mob_spell_lists` VALUES ('Vanguard_s_Scorpion',53,365,1,255); -- breakga (1~255)

-- Vanguard_s_Slime (54)
INSERT INTO `mob_spell_lists` VALUES ('Vanguard_s_Slime',54,356,1,255); -- paralyga (1~255)

-- Waraxe_Beak (55)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,161,1,255); -- stone_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,365,1,255); -- breakga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waraxe_Beak',55,366,1,255); -- graviga (1~255)

-- Lumber_Jack (56)
INSERT INTO `mob_spell_lists` VALUES ('Lumber_Jack',56,103,1,255); -- enstone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lumber_Jack',56,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lumber_Jack',56,255,1,255); -- break (1~255)

-- Vrtra (57)
INSERT INTO `mob_spell_lists` VALUES ('Vrtra',57,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vrtra',57,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vrtra',57,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vrtra',57,361,1,255); -- blindga (1~255)

-- Heavy_Metal_Crab (58)
INSERT INTO `mob_spell_lists` VALUES ('Heavy_Metal_Crab',58,199,1,255); -- waterga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heavy_Metal_Crab',58,230,1,255); -- bio (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heavy_Metal_Crab',58,254,1,255); -- blind (1~255)

-- Colo-Colo (59)
INSERT INTO `mob_spell_lists` VALUES ('Colo-Colo',59,225,1,255); -- poisonga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Colo-Colo',59,245,1,255); -- drain (1~255)

-- Furies (60)
INSERT INTO `mob_spell_lists` VALUES ('Furies',60,245,1,255); -- drain (1~255)

-- Macha (61)
INSERT INTO `mob_spell_lists` VALUES ('Macha',61,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Macha',61,360,1,255); -- dispelga (1~255)

-- Bitoso (62)
INSERT INTO `mob_spell_lists` VALUES ('Bitoso',62,3,1,255);   -- cure_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bitoso',62,356,1,255); -- paralyga (1~255)

-- Huntfly (63)
INSERT INTO `mob_spell_lists` VALUES ('Huntfly',63,154,1,255); -- aero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Huntfly',63,216,1,255); -- gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Huntfly',63,237,1,255); -- choke (1~255)

-- Metsanneitsyt (64)
INSERT INTO `mob_spell_lists` VALUES ('Metsanneitsyt',64,160,1,255); -- stone_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Metsanneitsyt',64,189,1,255); -- stonega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Metsanneitsyt',64,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Metsanneitsyt',64,247,1,255); -- aspir (1~255)

-- Nenaunir (65)
INSERT INTO `mob_spell_lists` VALUES ('Nenaunir',65,33,1,255);  -- diaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nenaunir',65,160,1,255); -- stone_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nenaunir',65,258,1,255); -- bind (1~255)

-- Sobbing_Eyes (66)
INSERT INTO `mob_spell_lists` VALUES ('Sobbing_Eyes',66,174,1,255); -- firaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobbing_Eyes',66,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobbing_Eyes',66,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobbing_Eyes',66,365,1,255); -- breakga (1~255)

-- Compound_Eyes (67)
INSERT INTO `mob_spell_lists` VALUES ('Compound_Eyes',67,145,1,255); -- fire_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Compound_Eyes',67,245,1,255); -- drain (1~255)

-- Opo-opo_Monarch (68)
INSERT INTO `mob_spell_lists` VALUES ('Opo-opo_Monarch',68,189,1,255); -- stonega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Opo-opo_Monarch',68,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Opo-opo_Monarch',68,358,1,255); -- hastega (1~255)

-- Dvorovoi (69)
INSERT INTO `mob_spell_lists` VALUES ('Dvorovoi',69,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvorovoi',69,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvorovoi',69,361,1,255); -- blindga (1~255)

-- Helltail_Harry (70)
INSERT INTO `mob_spell_lists` VALUES ('Helltail_Harry',70,150,1,255); -- blizzard_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Helltail_Harry',70,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Helltail_Harry',70,358,1,255); -- hastega (1~255)

-- Orcish_Onager (71)
INSERT INTO `mob_spell_lists` VALUES ('Orcish_Onager',71,362,1,255); -- bindga (1~255)

-- Macan_Gadangan (72)
INSERT INTO `mob_spell_lists` VALUES ('Macan_Gadangan',72,164,1,255); -- thunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Macan_Gadangan',72,165,1,255); -- thunder_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Macan_Gadangan',72,166,1,255); -- thunder_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Macan_Gadangan',72,194,1,255); -- thundaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Macan_Gadangan',72,195,1,255); -- thundaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Macan_Gadangan',72,212,1,255); -- burst (1~255)

-- Duke_Amduscias (73)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,156,1,255); -- aero_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,195,1,255); -- thundaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,258,1,255); -- bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Amduscias',73,249,1,255); -- blaze_spikes (1~255)

-- Beelzebub (74)
INSERT INTO `mob_spell_lists` VALUES ('Beelzebub',74,5,1,255);   -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beelzebub',74,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beelzebub',74,359,1,255); -- silencega (1~255)

-- Sabotender_Campeon (75)
INSERT INTO `mob_spell_lists` VALUES ('Sabotender_Campeon',75,5,1,255); -- cure_v (1~255)

-- Dragonian_Minstrel (76)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,373,1,255); -- foe_requiem_vi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,376,1,255); -- horde_lullaby (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,382,1,255); -- armys_paeon_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,387,1,255); -- mages_ballad_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,392,1,255); -- knights_minne_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,421,1,255); -- battlefield_elegy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,432,1,255); -- uncanny_etude (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragonian_Minstrel',76,434,1,255); -- swift_etude (1~255)

-- Tartaruga_Gigante (77)
INSERT INTO `mob_spell_lists` VALUES ('Tartaruga_Gigante',77,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tartaruga_Gigante',77,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tartaruga_Gigante',77,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tartaruga_Gigante',77,359,1,255); -- silencega (1~255)

-- Tiamat (78)
INSERT INTO `mob_spell_lists` VALUES ('Tiamat',78,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tiamat',78,249,1,255); -- blaze_spikes (1~255)

-- King_Arthro (79)
INSERT INTO `mob_spell_lists` VALUES ('King_Arthro',79,105,1,255); -- enwater (1~255)
INSERT INTO `mob_spell_lists` VALUES ('King_Arthro',79,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('King_Arthro',79,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('King_Arthro',79,240,1,255); -- drown (1~255)

-- Citipati (80)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,166,1,255); -- thunder_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,237,1,255); -- choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,240,1,255); -- drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Citipati',80,359,1,255); -- silencega (1~255)

-- Taisaijin (81)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,109,10,255); -- refresh (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,146,62,72);  -- fire_iii (62~72)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,156,59,71);  -- aero_iii (59~71)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,166,66,74);  -- thunder_iii (66~74)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,171,55,66);  -- water_iii (55~66)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,175,53,60);  -- firaga_ii (53~60)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,195,61,72);  -- thundaga_ii (61~72)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,210,10,255); -- quake (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,232,10,255); -- bio_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,247,25,255); -- aspir (25~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,249,10,255); -- blaze_spikes (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,254,4,255);  -- blind (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Taisaijin',81,258,7,255);  -- bind (7~255)

-- Pyuu_The_Spatemaker (82)
INSERT INTO `mob_spell_lists` VALUES ('Pyuu_The_Spatemaker',82,172,10,255); -- water_iv (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Pyuu_The_Spatemaker',82,201,10,255); -- waterga_iii (10~255)

-- Tros (83)
INSERT INTO `mob_spell_lists` VALUES ('Tros',83,200,10,255); -- waterga_ii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Tros',83,361,10,255); -- blindga (10~255)

-- Death_Clan_Destroyer (84)
INSERT INTO `mob_spell_lists` VALUES ('Death_Clan_Destroyer',84,8,10,255); -- curaga_ii (10~255)

-- Hydra_s_Hound (85)
INSERT INTO `mob_spell_lists` VALUES ('Hydra_s_Hound',85,361,10,255); -- blindga (10~255)

-- Dynamis_Lord (86)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,176,10,255); -- firaga_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,181,10,255); -- blizzaga_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,186,10,255); -- aeroga_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,191,10,255); -- stonega_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,196,10,255); -- thundaga_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,201,10,255); -- waterga_iii (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,273,10,255); -- sleepga (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,357,10,255); -- slowga (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,359,10,255); -- silencega (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,360,10,255); -- dispelga (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,362,10,255); -- bindga (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,365,10,255); -- breakga (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Dynamis_Lord',86,367,10,255); -- death (10~255)

-- Animated_Longsword (87)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,1,5,16);     -- cure (5~16)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,2,17,29);    -- cure_ii (17~29)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,3,30,54);    -- cure_iii (30~54)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,21,55,98);   -- holy (55~98)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,22,99,255);  -- holy_ii (99~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,28,7,33);    -- banish (7~33)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,29,34,255);  -- banish_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,43,10,29);   -- protect (10~29)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,44,30,49);   -- protect_ii (30~49)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,45,50,69);   -- protect_iii (50~69)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,46,70,89);   -- protect_iv (70~89)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,47,90,255);  -- protect_v (90~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,48,20,39);   -- shell (20~39)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,49,40,59);   -- shell_ii (40~59)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,50,60,79);   -- shell_iii (60~79)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,51,80,255);  -- shell_iv (80~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,112,37,255); -- flash (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Longsword',87,360,30,49);  -- dispelga (30~49)

-- Satellite_Staves (88)
INSERT INTO `mob_spell_lists` VALUES ('Satellite_Staves',88,4,37,255);   -- cure_iv (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Satellite_Staves',88,161,37,255); -- stone_iii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Satellite_Staves',88,190,37,255); -- stonega_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Satellite_Staves',88,191,37,255); -- stonega_iii (37~255)

-- Animated_Staff (89)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Staff',89,161,37,255); -- stone_iii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Staff',89,191,37,255); -- stonega_iii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Staff',89,192,37,255); -- stonega_iv (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Staff',89,273,37,255); -- sleepga (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Staff',89,365,37,255); -- breakga (37~255)

-- Animated_Tabar (90)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Tabar',90,273,37,255); -- sleepga (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Tabar',90,356,37,255); -- paralyga (37~255)

-- Animated_Claymore (91)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Claymore',91,181,37,255); -- blizzaga_iii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Claymore',91,250,37,255); -- ice_spikes (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Claymore',91,273,37,255); -- sleepga (37~255)

-- Animated_Scythe (92)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Scythe',92,361,37,255); -- blindga (37~255)

-- Animated_Tachi (93)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Tachi',93,359,37,255); -- silencega (37~255)

-- Animated_Dagger (94)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Dagger',94,186,37,255); -- aeroga_iii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Dagger',94,226,37,255); -- poisonga_ii (37~255)

-- Animated_Knuckles (95)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Knuckles',95,128,37,255); -- protectra_iv (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Knuckles',95,249,37,255); -- blaze_spikes (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Knuckles',95,358,37,255); -- hastega (37~255)

-- Animated_Shield (96)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Shield',96,106,37,255); -- phalanx (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Animated_Shield',96,273,37,255); -- sleepga (37~255)

-- Stubborn_Dredvodd (97)
INSERT INTO `mob_spell_lists` VALUES ('Stubborn_Dredvodd',97,54,1,255); -- stoneskin (1~255)

-- Demonic_Tiphia (98)
INSERT INTO `mob_spell_lists` VALUES ('Demonic_Tiphia',98,143,1,255); -- erase (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demonic_Tiphia',98,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demonic_Tiphia',98,356,1,255); -- paralyga (1~255)

-- Mycophile (99)
INSERT INTO `mob_spell_lists` VALUES ('Mycophile',99,220,1,255); -- poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mycophile',99,230,1,255); -- bio (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mycophile',99,254,1,255); -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mycophile',99,256,1,255); -- virus (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mycophile',99,356,1,255); -- paralyga (1~255)

-- Boreal_Hound (100)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Hound',100,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Hound',100,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Hound',100,250,1,255); -- ice_spikes (1~255)

-- Boreal_Tiger (101)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Tiger',101,175,1,255); -- firaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Tiger',101,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Tiger',101,249,1,255); -- blaze_spikes (1~255)

-- Boreal_Coerul (102)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Coerul',102,195,1,255); -- thundaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Coerul',102,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Boreal_Coerul',102,251,1,255); -- shock_spikes (1~255)

-- Ultima (103)
INSERT INTO `mob_spell_lists` VALUES ('Ultima',103,22,75,255); -- holy_ii (75~255)

-- Cwn_Cyrff (104)
INSERT INTO `mob_spell_lists` VALUES ('Cwn_Cyrff',104,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cwn_Cyrff',104,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cwn_Cyrff',104,257,1,255); -- curse (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cwn_Cyrff',104,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cwn_Cyrff',104,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cwn_Cyrff',104,361,1,255); -- blindga (1~255)

-- Nunyunuwi (105)
INSERT INTO `mob_spell_lists` VALUES ('Nunyunuwi',105,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nunyunuwi',105,362,1,255); -- bindga (1~255)

-- Diabolos_Heart (106)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,260,1,255); -- dispel (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Heart',106,367,1,255); -- death (1~255)

-- Diabolos_Diamond (107)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Diamond',107,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Diamond',107,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Diamond',107,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Diamond',107,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Diamond',107,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Diamond',107,367,1,255); -- death (1~255)

-- Diabolos_Club (108)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Club',108,367,1,255); -- death (1~255)

-- Ouryu (Ouryu from CoP 4-3 The Savage) (109)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_The_Savage',109,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_The_Savage',109,190,1,255); -- stonega_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_The_Savage',109,357,1,255); -- slowga (1~255)

-- Pasuk (110)
INSERT INTO `mob_spell_lists` VALUES ('Pasuk',110,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pasuk',110,247,1,255); -- aspir (1~255)

-- Jormungand (111)
INSERT INTO `mob_spell_lists` VALUES ('Jormungand',111,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jormungand',111,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jormungand',111,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jormungand',111,362,1,255); -- bindga (1~255)

-- Eald_Narche_2 (112)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,204,75,255); -- flare (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,206,75,255); -- freeze (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,208,75,255); -- tornado (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,210,75,255); -- quake (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,212,75,255); -- burst (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,214,75,255); -- flood (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,274,75,255); -- sleepga_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Eald_Narche_2',112,362,75,255); -- bindga (75~255)

-- Deviator (113)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,39,1,255);  -- banishga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,175,1,255); -- firaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,190,1,255); -- stonega_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,195,1,255); -- thundaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,200,1,255); -- waterga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deviator',113,274,1,255); -- sleepga_ii (1~255)

-- Diabolos_Darkness_Named (115)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Darkness_Named',115,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Darkness_Named',115,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Darkness_Named',115,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Darkness_Named',115,254,1,255); -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Darkness_Named',115,259,1,255); -- sleep_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Darkness_Named',115,273,1,255); -- sleepga (1~255)

-- Golden_Tongued_Culberry (116)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,4,1,255);   -- cure_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Golden_Tongued_Culberry',116,367,1,255); -- death (1~255)

-- Dark_Spark (117)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Spark',117,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Spark',117,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Spark',117,247,1,255); -- aspir (1~255)

-- Disaster_Idol_Firesday (118)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,100,1,255); -- enfire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Firesday',118,249,1,255); -- blaze_spikes (1~255)

-- Disaster_Idol_Earthsday (119)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,103,1,255); -- enstone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Earthsday',119,238,1,255); -- rasp (1~255)

-- Disaster_Idol_Watersday (120)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,105,1,255); -- enwater (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Watersday',120,240,1,255); -- drown (1~255)

-- Disaster_Idol_Windsday (121)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,102,1,255); -- enaero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Windsday',121,237,1,255); -- choke (1~255)

-- Disaster_Idol_Iceday (122)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Iceday',122,258,1,255); -- bind (1~255)

-- Disaster_Idol_Lightningsday (123)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,104,1,255); -- enthunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,239,1,255); -- shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,251,1,255); -- shock_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightningsday',123,252,1,255); -- stun (1~255)

-- Disaster_Idol_Lightsday (124)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,22,1,255);  -- holy_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,24,1,255);  -- dia_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,30,1,255);  -- banish_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,31,1,255);  -- banish_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,34,1,255);  -- diaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,40,1,255);  -- banishga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,108,1,255); -- regen (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,112,1,255); -- flash (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Lightsday',124,360,1,255); -- dispelga (1~255)

-- Disaster_Idol_Darksday (125)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,242,1,255); -- absorb-acc (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,254,1,255); -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,260,1,255); -- dispel (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,266,1,255); -- absorb-str (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,268,1,255); -- absorb-vit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,272,1,255); -- absorb-chr (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Disaster_Idol_Darksday',125,275,1,255); -- absorb-tp (1~255)

-- Casting_Behemoth (126)
INSERT INTO `mob_spell_lists` VALUES ('Casting_Behemoth',126,218,1,255); -- meteor (1~255)

-- Promathia_1 (127)
INSERT INTO `mob_spell_lists` VALUES ('Promathia_1',127,219,1,255); -- comet (1~255)

-- Promathia_2 (128)
INSERT INTO `mob_spell_lists` VALUES ('Promathia_2',128,218,1,255); -- meteor (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Promathia_2',128,219,1,255); -- comet (1~255)

-- Prishe (129)
INSERT INTO `mob_spell_lists` VALUES ('Prishe',129,4,1,255);  -- cure_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Prishe',129,5,1,255);  -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Prishe',129,21,1,255); -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Prishe',129,30,1,255); -- banish_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Prishe',129,40,1,255); -- banishga_iii (1~255)

-- Bedrock_Barry (130)
INSERT INTO `mob_spell_lists` VALUES ('Bedrock_Barry',130,238,1,255); -- rasp (1~255)

-- Tyrant (131)
INSERT INTO `mob_spell_lists` VALUES ('Tyrant',131,112,1,255); -- flash (1~255)

-- Alastor_Antlion (132)
INSERT INTO `mob_spell_lists` VALUES ('Alastor_Antlion',132,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alastor_Antlion',132,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alastor_Antlion',132,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alastor_Antlion',132,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alastor_Antlion',132,365,1,255); -- breakga (1~255)

-- Race_Runner (133)
INSERT INTO `mob_spell_lists` VALUES ('Race_Runner',133,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Race_Runner',133,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Race_Runner',133,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Race_Runner',133,216,1,255); -- gravity (1~255)

-- Ajido_Marujido (134)
INSERT INTO `mob_spell_lists` VALUES ('Ajido_Marujido',134,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ajido_Marujido',134,214,1,255); -- flood (1~255)

-- Yali (135)
INSERT INTO `mob_spell_lists` VALUES ('Yali',135,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yali',135,360,1,255); -- dispelga (1~255)

-- Aern_s_Wynav (136)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,372,1,255); -- foe_requiem_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,376,1,255); -- horde_lullaby (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,382,1,255); -- armys_paeon_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,392,1,255); -- knights_minne_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,397,1,255); -- valor_minuet_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,400,1,255); -- blade_madrigal (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,422,1,255); -- carnage_elegy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,462,1,255); -- magic_finale (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aern_s_Wynav',136,466,1,255); -- maidens_virelai (1~255)

-- Sekhmet (137)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,34,1,255);  -- diaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,56,1,255);  -- slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,216,1,255); -- gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,221,1,255); -- poison_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,253,1,255); -- sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,254,1,255); -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,258,1,255); -- bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,259,1,255); -- sleep_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sekhmet',137,260,1,255); -- dispel (1~255)

-- Jailer_of_Faith (138)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Faith',138,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Faith',138,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Faith',138,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Faith',138,365,1,255); -- breakga (1~255)

-- Sarameya (139)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,146,1,255); -- fire_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,175,1,255); -- firaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,205,1,255); -- flare_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarameya',139,249,1,255); -- blaze_spikes (1~255)

-- Jailer_of_Hope (140)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Hope',140,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Hope',140,213,1,255); -- burst_ii (1~255)

-- Avatar_SMN (141)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,296,1,255); -- carbuncle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,298,1,255); -- ifrit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,299,1,255); -- titan (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,300,1,255); -- leviathan (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,301,1,255); -- garuda (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,302,1,255); -- shiva (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Avatar_SMN',141,303,1,255); -- ramuh (1~255)

-- Charming_Trio (142)
INSERT INTO `mob_spell_lists` VALUES ('Charming_Trio',142,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Charming_Trio',142,247,1,255); -- aspir (1~255)

-- Onki (143)
INSERT INTO `mob_spell_lists` VALUES ('Onki',143,288,1,255); -- fire_spirit (1~255)

-- Bahamut (144)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,5,1,255);   -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,47,1,255);  -- protect_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,52,1,255);  -- shell_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,106,1,255); -- phalanx (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,205,1,255); -- flare_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bahamut',144,366,1,255); -- graviga (1~255)

-- Dobsonfly (145)
INSERT INTO `mob_spell_lists` VALUES ('Dobsonfly',145,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dobsonfly',145,155,1,255); -- aero_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dobsonfly',145,357,1,255); -- slowga (1~255)

-- Duke_Decapod (146)
INSERT INTO `mob_spell_lists` VALUES ('Duke_Decapod',146,169,1,10); -- water (1~10)

-- Ankou (147)
INSERT INTO `mob_spell_lists` VALUES ('Ankou',147,230,1,255); -- bio (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ankou',147,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ankou',147,247,1,255); -- aspir (1~255)

-- Blighting_Brand (148)
INSERT INTO `mob_spell_lists` VALUES ('Blighting_Brand',148,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blighting_Brand',148,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blighting_Brand',148,253,1,255); -- sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blighting_Brand',148,254,1,255); -- blind (1~255)

-- Diabolos_Waking_Dream (149)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Waking_Dream',149,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Waking_Dream',149,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Waking_Dream',149,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Diabolos_Waking_Dream',149,360,1,255); -- dispelga (1~255)

-- Oupire (150)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,227,1,255); -- poisonga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,365,1,255); -- breakga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Oupire',150,366,1,255); -- graviga (1~255)

-- Wake_Warder_Wanda (151)
INSERT INTO `mob_spell_lists` VALUES ('Wake_Warder_Wanda',151,240,1,255); -- drown (1~255)

-- Lord_of_Onzozo (152)
INSERT INTO `mob_spell_lists` VALUES ('Lord_of_Onzozo',152,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_of_Onzozo',152,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_of_Onzozo',152,361,1,255); -- blindga (1~255)

-- Iratham_HP_50to100 (153)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_50to100',153,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_50to100',153,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_50to100',153,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_50to100',153,259,1,255); -- sleep_ii (1~255)

-- Iratham_HP_under_50 (154)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_50',154,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_50',154,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_50',154,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_50',154,259,1,255); -- sleep_ii (1~255)

-- Iratham_HP_under_20 (155)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_20',155,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_20',155,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_20',155,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_20',155,219,1,255); -- comet (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iratham_HP_under_20',155,259,1,255); -- sleep_ii (1~255)

-- Yaanei (156)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Yaanei',156,365,1,255); -- breakga (1~255)

-- Kutharei (157)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kutharei',157,366,1,255); -- graviga (1~255)

-- Sippoy_HP_50to100 (158)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_50to100',158,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_50to100',158,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_50to100',158,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_50to100',158,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_50to100',158,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_50to100',158,362,1,255); -- bindga (1~255)

-- Sippoy_HP_under_50 (159)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sippoy_HP_under_50',159,362,1,255); -- bindga (1~255)

-- Rani_HP_75to100 (160)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,112,1,255); -- flash (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,222,1,255); -- poison_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_75to100',160,359,1,255); -- silencega (1~255)

-- Rani_HP_50to75 (161)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,112,1,255); -- flash (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,222,1,255); -- poison_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_50to75',161,359,1,255); -- silencega (1~255)

-- Rani_HP_under_50 (162)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,112,1,255); -- flash (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,218,1,255); -- meteor (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,222,1,255); -- poison_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rani_HP_under_50',162,359,1,255); -- silencega (1~255)

-- Raja (163)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,257,1,255); -- curse (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Raja',163,361,1,255); -- blindga (1~255)

-- Lesser_Arimaspi (164)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lesser_Arimaspi',164,259,1,255); -- sleep_ii (1~255)

-- Arimaspi (165)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,257,1,255); -- curse (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Arimaspi',165,259,1,255); -- sleep_ii (1~255)

-- Ashtaerh_the_Gallvexed (166)
INSERT INTO `mob_spell_lists` VALUES ('Ashtaerh_the_Gallvexed',166,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ashtaerh_the_Gallvexed',166,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ashtaerh_the_Gallvexed',166,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ashtaerh_the_Gallvexed',166,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ashtaerh_the_Gallvexed',166,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ashtaerh_the_Gallvexed',166,202,1,255); -- waterga_iv (1~255)

-- Bakka (167)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bakka',167,362,1,255); -- bindga (1~255)

-- Bloodeye_Vileberry (168)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,227,1,255); -- poisonga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,366,1,255); -- graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloodeye_Vileberry',168,367,1,255); -- death (1~255)

-- Gangly_Gean (169)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gangly_Gean',169,274,1,255); -- sleepga_ii (1~255)

-- Guimauve (170)
INSERT INTO `mob_spell_lists` VALUES ('Guimauve',170,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Guimauve',170,184,1,255); -- aeroga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Guimauve',170,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Guimauve',170,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Guimauve',170,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Guimauve',170,359,1,255); -- silencega (1~255)

-- Lentor (171)
INSERT INTO `mob_spell_lists` VALUES ('Lentor',171,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lentor',171,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lentor',171,202,1,255); -- waterga_iv (1~255)

-- Siranpa-kamuy (172)
INSERT INTO `mob_spell_lists` VALUES ('Siranpa-kamuy',172,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Siranpa-kamuy',172,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Siranpa-kamuy',172,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Siranpa-kamuy',172,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Siranpa-kamuy',172,359,1,255); -- silencega (1~255)

-- Tonberry_Lieje (173)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_Lieje',173,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_Lieje',173,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_Lieje',173,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_Lieje',173,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_Lieje',173,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tonberry_Lieje',173,205,1,255); -- flare_ii (1~255)

-- Turul (174)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul',174,359,1,255); -- silencega (1~255)

-- Turul_low_HP (175)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Turul_low_HP',175,359,1,255); -- silencega (1~255)

-- Baba_Yaga (176)
INSERT INTO `mob_spell_lists` VALUES ('Baba_Yaga',176,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Baba_Yaga',176,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Baba_Yaga',176,366,1,255); -- graviga (1~255)

-- Carabosse (177)
INSERT INTO `mob_spell_lists` VALUES ('Carabosse',177,5,1,255);  -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Carabosse',177,6,1,255);  -- cure_vi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Carabosse',177,47,1,255); -- protect_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Carabosse',177,52,1,255); -- shell_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Carabosse',177,54,1,255); -- stoneskin (1~255)

-- Irrlicht (178)
INSERT INTO `mob_spell_lists` VALUES ('Irrlicht',178,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Irrlicht',178,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Irrlicht',178,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Irrlicht',178,362,1,255); -- bindga (1~255)

-- La_Theine_Liege (179)
INSERT INTO `mob_spell_lists` VALUES ('La_Theine_Liege',179,184,1,255); -- aeroga (1~255)

-- Megamaw_Mikey (180)
INSERT INTO `mob_spell_lists` VALUES ('Megamaw_Mikey',180,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Megamaw_Mikey',180,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Megamaw_Mikey',180,210,1,255); -- quake (1~255)

-- Trembler_Tabitha (181)
INSERT INTO `mob_spell_lists` VALUES ('Trembler_Tabitha',181,210,1,255); -- quake (1~255)

-- Poroggo_Dom_Juan (182)
INSERT INTO `mob_spell_lists` VALUES ('Poroggo_Dom_Juan',182,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Poroggo_Dom_Juan',182,226,1,255); -- poisonga_ii (1~255)

-- Abas (183)
INSERT INTO `mob_spell_lists` VALUES ('Abas',183,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Abas',183,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Abas',183,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Abas',183,226,1,255); -- poisonga_ii (1~255)

-- Cannered_Noz (184)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,207,1,255); -- freeze_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,366,1,255); -- graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cannered_Noz',184,367,1,255); -- death (1~255)

-- Chukwa (185)
INSERT INTO `mob_spell_lists` VALUES ('Chukwa',185,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chukwa',185,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chukwa',185,211,1,255); -- quake_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chukwa',185,215,1,255); -- flood_ii (1~255)

-- Cuelebre (186)
INSERT INTO `mob_spell_lists` VALUES ('Cuelebre',186,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cuelebre',186,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cuelebre',186,365,1,255); -- breakga (1~255)

-- Glavoid (187)
INSERT INTO `mob_spell_lists` VALUES ('Glavoid',187,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Glavoid',187,211,1,255); -- quake_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Glavoid',187,357,1,255); -- slowga (1~255)

-- Lachrymater_Fireday (188)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Fireday',188,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Fireday',188,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Fireday',188,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Fireday',188,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Fireday',188,249,1,255); -- blaze_spikes (1~255)

-- Lachrymater_Iceday (189)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Iceday',189,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Iceday',189,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Iceday',189,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Iceday',189,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Iceday',189,250,1,255); -- ice_spikes (1~255)

-- Lachrymater_Earthday (190)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Earthday',190,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Earthday',190,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Earthday',190,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Earthday',190,238,1,255); -- rasp (1~255)

-- Lachrymater_Thunderday (191)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Thunderday',191,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Thunderday',191,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Thunderday',191,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Thunderday',191,251,1,255); -- shock_spikes (1~255)

-- Lachrymater_Waterday (192)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Waterday',192,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Waterday',192,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Waterday',192,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Waterday',192,240,1,255); -- drown (1~255)

-- Lachrymater_windday (193)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_windday',193,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_windday',193,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_windday',193,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_windday',193,237,1,255); -- choke (1~255)

-- Lachrymater_Darkday (194)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,242,1,255); -- absorb-acc (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,266,1,255); -- absorb-str (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,268,1,255); -- absorb-vit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,272,1,255); -- absorb-chr (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Darkday',194,273,1,255); -- sleepga (1~255)

-- Lachrymater_Lightday (195)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Lightday',195,21,1,255); -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Lightday',195,25,1,255); -- dia_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Lightday',195,31,1,255); -- banish_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lachrymater_Lightday',195,40,1,255); -- banishga_iii (1~255)

-- Lacovie (196)
INSERT INTO `mob_spell_lists` VALUES ('Lacovie',196,79,1,255);  -- slow_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacovie',196,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacovie',196,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacovie',196,255,1,255); -- break (1~255)

-- Manananggal (197)
INSERT INTO `mob_spell_lists` VALUES ('Manananggal',197,150,1,255); -- blizzard_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Manananggal',197,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Manananggal',197,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Manananggal',197,268,1,255); -- absorb-vit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Manananggal',197,275,1,255); -- absorb-tp (1~255)

-- Mictlantecuhtli (198)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,259,1,255); -- sleep_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mictlantecuhtli',198,274,1,255); -- sleepga_ii (1~255)

-- Quetzalli (199)
INSERT INTO `mob_spell_lists` VALUES ('Quetzalli',199,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Quetzalli',199,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Quetzalli',199,204,1,255); -- flare (1~255)

-- Ophanim (200)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ophanim',200,249,1,255); -- blaze_spikes (1~255)

-- Halimede (201)
INSERT INTO `mob_spell_lists` VALUES ('Halimede',201,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Halimede',201,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Halimede',201,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Halimede',201,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Halimede',201,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Halimede',201,356,1,255); -- paralyga (1~255)

-- Mindertaur (202)
INSERT INTO `mob_spell_lists` VALUES ('Mindertaur',202,5,1,255);   -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mindertaur',202,29,1,255);  -- banish_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mindertaur',202,112,1,255); -- flash (1~255)

-- Eldertaur (203)
INSERT INTO `mob_spell_lists` VALUES ('Eldertaur',203,5,1,255);  -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eldertaur',203,46,1,255); -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eldertaur',203,50,1,255); -- shell_iii (1~255)

-- FireSpirit (204)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,144,13,37);  -- fire (13~37)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,145,38,61);  -- fire_ii (38~61)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,146,62,72);  -- fire_iii (62~72)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('FireSpirit',204,235,24,255); -- burn (24~255)

-- IceSpirit (205)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,149,17,41);  -- blizzard (17~41)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,150,42,63);  -- blizzard_ii (42~63)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,151,64,73);  -- blizzard_iii (64~73)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,152,74,88);  -- blizzard_iv (74~88)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,206,50,255); -- freeze (50~255)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,236,22,255); -- frost (22~255)
INSERT INTO `mob_spell_lists` VALUES ('IceSpirit',205,258,7,255);  -- bind (7~255)

-- AirSpirit (206)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,59,15,255);  -- silence (15~255)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,154,9,33);   -- aero (9~33)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,155,34,58);  -- aero_ii (34~58)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,156,59,71);  -- aero_iii (59~71)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,216,21,255); -- gravity (21~255)
INSERT INTO `mob_spell_lists` VALUES ('AirSpirit',206,237,20,255); -- choke (20~255)

-- EarthSpirit (207)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,159,1,25);   -- stone (1~25)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,160,26,50);  -- stone_ii (26~50)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,161,51,67);  -- stone_iii (51~67)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,162,68,76);  -- stone_iv (68~76)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('EarthSpirit',207,238,18,255); -- rasp (18~255)

-- ThunderSpirit (208)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,164,21,45);  -- thunder (21~45)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,165,46,65);  -- thunder_ii (46~65)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,166,66,74);  -- thunder_iii (66~74)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,167,75,91);  -- thunder_iv (75~91)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,212,56,255); -- burst (56~255)
INSERT INTO `mob_spell_lists` VALUES ('ThunderSpirit',208,239,16,50);  -- shock (16~50)

-- WaterSpirit (209)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,169,5,29);   -- water (5~29)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,170,30,54);  -- water_ii (30~54)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,171,55,69);  -- water_iii (55~69)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,172,70,79);  -- water_iv (70~79)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,214,58,255); -- flood (58~255)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,220,3,41);   -- poison (3~41)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,221,42,255); -- poison_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('WaterSpirit',209,240,27,255); -- drown (27~255)

-- LightSpirit (210)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,1,1,10);     -- cure (1~10)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,2,11,20);    -- cure_ii (11~20)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,3,21,40);    -- cure_iii (21~40)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,4,41,60);    -- cure_iv (41~60)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,7,16,30);    -- curaga (16~30)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,8,31,50);    -- curaga_ii (31~50)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,9,51,70);    -- curaga_iii (51~70)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,10,71,255);  -- curaga_iv (71~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,21,50,94);   -- holy (50~94)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,22,95,255);  -- holy_ii (95~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,23,1,30);    -- dia (1~30)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,24,31,255);  -- dia_ii (31~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,28,5,29);    -- banish (5~29)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,29,30,64);   -- banish_ii (30~64)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,30,65,89);   -- banish_iii (65~89)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,31,90,255);  -- banish_iv (90~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,43,7,26);    -- protect (7~26)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,44,27,46);   -- protect_ii (27~46)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,45,47,62);   -- protect_iii (47~62)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,46,63,75);   -- protect_iv (63~75)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,47,76,255);  -- protect_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,48,17,36);   -- shell (17~36)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,49,37,56);   -- shell_ii (37~56)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,50,57,67);   -- shell_iii (57~67)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,51,68,75);   -- shell_iv (68~75)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,52,76,255);  -- shell_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,108,21,255); -- regen (21~255)
INSERT INTO `mob_spell_lists` VALUES ('LightSpirit',210,112,37,255); -- flash (37~255)

-- DarkSpirit (211)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,230,10,34);  -- bio (10~34)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,231,35,255); -- bio_ii (35~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,245,10,255); -- drain (10~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,247,20,255); -- aspir (20~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,252,37,255); -- stun (37~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,253,20,255); -- sleep (20~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,254,1,255);  -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,259,41,255); -- sleep_ii (41~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,260,32,255); -- dispel (32~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,272,33,255); -- absorb-chr (33~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,274,56,255); -- sleepga_ii (56~255)
INSERT INTO `mob_spell_lists` VALUES ('DarkSpirit',211,275,45,255); -- absorb-tp (45~255)

-- Amnaf_blu (212)
INSERT INTO `mob_spell_lists` VALUES ('Amnaf_blu',212,640,1,255); -- tail_slap (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amnaf_blu',212,641,1,255); -- hysteric_barrage (1~255)

-- Raubahn (213)
INSERT INTO `mob_spell_lists` VALUES ('Raubahn',213,557,1,255); -- eyes_on_me (1~255)

-- Alexander_NP (214)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_NP',214,22,1,255); -- holy_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_NP',214,25,1,255); -- dia_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_NP',214,31,1,255); -- banish_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_NP',214,35,1,255); -- diaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_NP',214,40,1,255); -- banishga_iii (1~255)

-- Amun (215)
INSERT INTO `mob_spell_lists` VALUES ('Amun',215,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amun',215,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amun',215,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amun',215,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amun',215,359,1,255); -- silencega (1~255)

-- Berstuk (216)
INSERT INTO `mob_spell_lists` VALUES ('Berstuk',216,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berstuk',216,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berstuk',216,366,1,255); -- graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berstuk',216,501,1,255); -- waterja (1~255)

-- Blazing_Eruca (217)
INSERT INTO `mob_spell_lists` VALUES ('Blazing_Eruca',217,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blazing_Eruca',217,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blazing_Eruca',217,286,1,255); -- addle (1~255)

-- Drekavac (218)
INSERT INTO `mob_spell_lists` VALUES ('Drekavac',218,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Drekavac',218,113,1,255); -- rainstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Drekavac',218,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Drekavac',218,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Drekavac',218,491,1,255); -- gain-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Drekavac',218,501,1,255); -- waterja (1~255)

-- Granite_Borer (219)
INSERT INTO `mob_spell_lists` VALUES ('Granite_Borer',219,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Granite_Borer',219,177,1,255); -- firaga_iv (1~255)

-- Kharon (220)
INSERT INTO `mob_spell_lists` VALUES ('Kharon',220,275,1,255); -- absorb-tp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kharon',220,277,1,255); -- dread_spikes (1~255)

-- Maahes (221)
INSERT INTO `mob_spell_lists` VALUES ('Maahes',221,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Maahes',221,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Maahes',221,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Maahes',221,197,1,255); -- thundaga_iv (1~255)

-- Mielikki (222)
INSERT INTO `mob_spell_lists` VALUES ('Mielikki',222,99,1,255);  -- sandstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mielikki',222,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mielikki',222,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mielikki',222,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mielikki',222,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mielikki',222,499,1,255); -- stoneja (1~255)

-- Pallid_Percy (223)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pallid_Percy',223,366,1,255); -- graviga (1~255)

-- Svarbhanu (224)
INSERT INTO `mob_spell_lists` VALUES ('Svarbhanu',224,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Svarbhanu',224,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Svarbhanu',224,357,1,255); -- slowga (1~255)

-- Smok (225)
INSERT INTO `mob_spell_lists` VALUES ('Smok',225,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Smok',225,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Smok',225,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Smok',225,286,1,255); -- addle (1~255)

-- Titlacauan (226)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,219,1,255); -- comet (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Titlacauan',226,367,1,255); -- death (1~255)

-- Tunga_mode1 (227)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode1',227,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode1',227,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode1',227,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode1',227,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode1',227,365,1,255); -- breakga (1~255)

-- Tunga_mode2 (228)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode2',228,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode2',228,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode2',228,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Tunga_mode2',228,365,1,255); -- breakga (1~255)

-- Ulhuadshi (229)
INSERT INTO `mob_spell_lists` VALUES ('Ulhuadshi',229,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulhuadshi',229,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulhuadshi',229,499,1,255); -- stoneja (1~255)

-- Abyssic_Cluster (230)
INSERT INTO `mob_spell_lists` VALUES ('Abyssic_Cluster',230,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Abyssic_Cluster',230,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Abyssic_Cluster',230,205,1,255); -- flare_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Abyssic_Cluster',230,249,1,255); -- blaze_spikes (1~255)

-- Amhuluk (231)
INSERT INTO `mob_spell_lists` VALUES ('Amhuluk',231,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amhuluk',231,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amhuluk',231,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amhuluk',231,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amhuluk',231,366,1,255); -- graviga (1~255)

-- Athamas (232)
INSERT INTO `mob_spell_lists` VALUES ('Athamas',232,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Athamas',232,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Athamas',232,366,1,255); -- graviga (1~255)

-- Heqet (233)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,56,1,255);  -- slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,199,1,255); -- waterga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,200,1,255); -- waterga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Heqet',233,501,1,255); -- waterja (1~255)

-- Karkatakam (234)
INSERT INTO `mob_spell_lists` VALUES ('Karkatakam',234,200,1,255); -- waterga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Karkatakam',234,214,1,255); -- flood (1~255)

-- Sobek (235)
INSERT INTO `mob_spell_lists` VALUES ('Sobek',235,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobek',235,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobek',235,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobek',235,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sobek',235,362,1,255); -- bindga (1~255)

-- Itzpapalotl (236)
INSERT INTO `mob_spell_lists` VALUES ('Itzpapalotl',236,177,1,255); -- firaga_iv (1~255)

-- Likho (237)
INSERT INTO `mob_spell_lists` VALUES ('Likho',237,175,1,255); -- firaga_ii (1~255)

-- Hoar-knuckled_Rimberry (238)
INSERT INTO `mob_spell_lists` VALUES ('Hoar-knuckled_Rimberry',238,324,1,255); -- hyoton_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hoar-knuckled_Rimberry',238,342,1,255); -- jubaku_ni (1~255)

-- Dee_Zelko_85 (239)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_85',239,154,1,255); -- aero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_85',239,184,1,255); -- aeroga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_85',239,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_85',239,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_85',239,274,1,255); -- sleepga_ii (1~255)

-- Dee_Zelko_70 (240)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_70',240,155,1,255); -- aero_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_70',240,184,1,255); -- aeroga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_70',240,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_70',240,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_70',240,274,1,255); -- sleepga_ii (1~255)

-- Dee_Zelko_55 (241)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_55',241,156,1,255); -- aero_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_55',241,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_55',241,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_55',241,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_55',241,274,1,255); -- sleepga_ii (1~255)

-- Dee_Zelko_40 (242)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_40',242,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_40',242,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_40',242,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_40',242,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_40',242,274,1,255); -- sleepga_ii (1~255)

-- Dee_Zelko_25 (243)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_25',243,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_25',243,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_25',243,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_25',243,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_25',243,274,1,255); -- sleepga_ii (1~255)

-- Dee_Zelko_0 (244)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_0',244,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_0',244,209,1,255); -- tornado_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_0',244,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_0',244,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dee_Zelko_0',244,274,1,255); -- sleepga_ii (1~255)

-- Bukhis (245)
INSERT INTO `mob_spell_lists` VALUES ('Bukhis',245,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bukhis',245,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bukhis',245,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bukhis',245,362,1,255); -- bindga (1~255)

-- Chhir_Batti (246)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,118,1,255); -- voidstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chhir_Batti',246,362,1,255); -- bindga (1~255)

-- Durinn (247)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Durinn',247,359,1,255); -- silencega (1~255)

-- Dvalinn (248)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dvalinn',248,366,1,255); -- graviga (1~255)

-- Hanuman (249)
INSERT INTO `mob_spell_lists` VALUES ('Hanuman',249,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hanuman',249,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hanuman',249,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hanuman',249,366,1,255); -- graviga (1~255)

-- Hrosshvalur (250)
INSERT INTO `mob_spell_lists` VALUES ('Hrosshvalur',250,501,1,255); -- waterja (1~255)

-- Iku-Turso (251)
INSERT INTO `mob_spell_lists` VALUES ('Iku-Turso',251,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iku-Turso',251,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Iku-Turso',251,501,1,255); -- waterja (1~255)

-- Kadraeth_the_Hatespawn (252)
INSERT INTO `mob_spell_lists` VALUES ('Kadraeth_the_Hatespawn',252,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kadraeth_the_Hatespawn',252,252,1,255); -- stun (1~255)

-- Lord_Varney (253)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lord_Varney',253,366,1,255); -- graviga (1~255)

-- Pascerpot (254)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,22,1,255);  -- holy_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,40,1,255);  -- banishga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pascerpot',254,359,1,255); -- silencega (1~255)

-- Rakshas (255)
INSERT INTO `mob_spell_lists` VALUES ('Rakshas',255,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rakshas',255,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rakshas',255,255,1,255); -- break (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rakshas',255,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rakshas',255,357,1,255); -- slowga (1~255)

-- Sedna (256)
INSERT INTO `mob_spell_lists` VALUES ('Sedna',256,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sedna',256,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sedna',256,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sedna',256,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sedna',256,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sedna',256,501,1,255); -- waterja (1~255)

-- Karkadann (257)
INSERT INTO `mob_spell_lists` VALUES ('Karkadann',257,197,1,255); -- thundaga_iv (1~255)

-- Amarok (258)
INSERT INTO `mob_spell_lists` VALUES ('Amarok',258,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amarok',258,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amarok',258,286,1,255); -- addle (1~255)

-- Ansherekh (259)
INSERT INTO `mob_spell_lists` VALUES ('Ansherekh',259,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ansherekh',259,286,1,255); -- addle (1~255)

-- Battlerigged_Chariot (260)
INSERT INTO `mob_spell_lists` VALUES ('Battlerigged_Chariot',260,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Battlerigged_Chariot',260,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Battlerigged_Chariot',260,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Battlerigged_Chariot',260,286,1,255); -- addle (1~255)

-- Cuijatender (261)
INSERT INTO `mob_spell_lists` VALUES ('Cuijatender',261,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cuijatender',261,359,1,255); -- silencega (1~255)

-- Dragua (262)
INSERT INTO `mob_spell_lists` VALUES ('Dragua',262,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragua',262,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragua',262,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragua',262,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dragua',262,499,1,255); -- stoneja (1~255)

-- Hedjedjet_pre_50 (263)
INSERT INTO `mob_spell_lists` VALUES ('Hedjedjet_pre_50',263,362,1,255); -- bindga (1~255)

-- Hedjedjet_post_50 (264)
INSERT INTO `mob_spell_lists` VALUES ('Hedjedjet_post_50',264,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hedjedjet_post_50',264,365,1,255); -- breakga (1~255)

-- Orthrus (265)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,146,1,255); -- fire_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Orthrus',265,249,1,255); -- blaze_spikes (1~255)

-- Ouzelum (266)
INSERT INTO `mob_spell_lists` VALUES ('Ouzelum',266,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouzelum',266,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouzelum',266,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouzelum',266,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouzelum',266,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouzelum',266,359,1,255); -- silencega (1~255)

-- Sharabha_100_to_50 (267)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_100_to_50',267,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_100_to_50',267,191,1,255); -- stonega_iii (1~255)

-- Sharabha_50_to_25 (268)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_50_to_25',268,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_50_to_25',268,499,1,255); -- stoneja (1~255)

-- Sharabha_below_25 (269)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_below_25',269,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_below_25',269,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sharabha_below_25',269,499,1,255); -- stoneja (1~255)

-- Vadleany (270)
INSERT INTO `mob_spell_lists` VALUES ('Vadleany',270,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vadleany',270,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vadleany',270,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vadleany',270,498,1,255); -- aeroja (1~255)

-- Waugyl (271)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,99,1,255);  -- sandstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,113,1,255); -- rainstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,114,1,255); -- windstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,115,1,255); -- firestorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,116,1,255); -- hailstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,117,1,255); -- thunderstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,118,1,255); -- voidstorm (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waugyl',271,119,1,255); -- aurorastorm (1~255)

-- Anemic_Aloysius (272)
INSERT INTO `mob_spell_lists` VALUES ('Anemic_Aloysius',272,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Anemic_Aloysius',272,190,1,255); -- stonega_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Anemic_Aloysius',272,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Anemic_Aloysius',272,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Anemic_Aloysius',272,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Anemic_Aloysius',272,499,1,255); -- stoneja (1~255)

-- Apademak (273)
INSERT INTO `mob_spell_lists` VALUES ('Apademak',273,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Apademak',273,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Apademak',273,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Apademak',273,197,1,255); -- thundaga_iv (1~255)

-- Empousa (274)
INSERT INTO `mob_spell_lists` VALUES ('Empousa',274,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Empousa',274,277,1,255); -- dread_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Empousa',274,360,1,255); -- dispelga (1~255)

-- Isgebind (275)
INSERT INTO `mob_spell_lists` VALUES ('Isgebind',275,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Isgebind',275,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Isgebind',275,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Isgebind',275,182,1,255); -- blizzaga_iv (1~255)

-- Pantokrator_100_to_25 (276)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_100_to_25',276,366,1,255); -- graviga (1~255)

-- Pantokrator_below_25 (277)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,168,1,255); -- thunder_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pantokrator_below_25',277,366,1,255); -- graviga (1~255)

-- Upas-Kamuy (278)
INSERT INTO `mob_spell_lists` VALUES ('Upas-Kamuy',278,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Upas-Kamuy',278,153,1,255); -- blizzard_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Upas-Kamuy',278,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Upas-Kamuy',278,207,1,255); -- freeze_ii (1~255)

-- Veri_Selen (279)
INSERT INTO `mob_spell_lists` VALUES ('Veri_Selen',279,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Veri_Selen',279,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Veri_Selen',279,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Veri_Selen',279,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Veri_Selen',279,359,1,255); -- silencega (1~255)

-- Amphitrite (280)
INSERT INTO `mob_spell_lists` VALUES ('Amphitrite',280,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amphitrite',280,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Amphitrite',280,201,1,255); -- waterga_iii (1~255)

-- Assailer_Chariot (281)
INSERT INTO `mob_spell_lists` VALUES ('Assailer_Chariot',281,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Assailer_Chariot',281,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Assailer_Chariot',281,239,1,255); -- shock (1~255)

-- Azdaja (282)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,260,1,255); -- dispel (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,365,1,255); -- breakga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Azdaja',282,366,1,255); -- graviga (1~255)

-- Aby_Grauberg_Goblin_NM (283)
INSERT INTO `mob_spell_lists` VALUES ('Aby_Grauberg_Goblin_NM',283,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aby_Grauberg_Goblin_NM',283,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aby_Grauberg_Goblin_NM',283,496,1,255); -- firaja (1~255)

-- Fleshflayer_Killakriq (284)
INSERT INTO `mob_spell_lists` VALUES ('Fleshflayer_Killakriq',284,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fleshflayer_Killakriq',284,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fleshflayer_Killakriq',284,286,1,255); -- addle (1~255)

-- Fuath (285)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Fuath',285,247,1,255); -- aspir (1~255)

-- Ika-Roa (286)
INSERT INTO `mob_spell_lists` VALUES ('Ika-Roa',286,200,1,255); -- waterga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ika-Roa',286,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ika-Roa',286,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ika-Roa',286,501,1,255); -- waterja (1~255)

-- Lorelei (287)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,35,1,255);  -- diaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lorelei',287,498,1,255); -- aeroja (1~255)

-- Minaruja (288)
INSERT INTO `mob_spell_lists` VALUES ('Minaruja',288,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Minaruja',288,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Minaruja',288,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Minaruja',288,359,1,255); -- silencega (1~255)

-- Rencounter_Chariot (289)
INSERT INTO `mob_spell_lists` VALUES ('Rencounter_Chariot',289,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rencounter_Chariot',289,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rencounter_Chariot',289,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rencounter_Chariot',289,239,1,255); -- shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rencounter_Chariot',289,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rencounter_Chariot',289,271,1,255); -- absorb-mnd (1~255)

-- Teekesselchen (290)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teekesselchen',290,365,1,255); -- breakga (1~255)

-- Teugghia (291)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,177,1,255); -- firaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,182,1,255); -- blizzaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,187,1,255); -- aeroga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,192,1,255); -- stonega_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,197,1,255); -- thundaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,202,1,255); -- waterga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,286,1,255); -- addle (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Teugghia',291,366,1,255); -- graviga (1~255)

-- Xibalba (292)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,158,1,255); -- aero_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,361,1,255); -- blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,366,1,255); -- graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,367,1,255); -- death (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Xibalba',292,498,1,255); -- aeroja (1~255)

-- Nosferatu (293)
INSERT INTO `mob_spell_lists` VALUES ('Nosferatu',293,242,1,255); -- absorb-acc (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nosferatu',293,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nosferatu',293,246,1,255); -- drain_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nosferatu',293,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nosferatu',293,275,1,255); -- absorb-tp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Nosferatu',293,277,1,255); -- dread_spikes (1~255)

-- Honor (294)
INSERT INTO `mob_spell_lists` VALUES ('Honor',294,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Honor',294,359,1,255); -- silencega (1~255)

-- Bomb_Queen / Big Bomb / Friars Lantern (295)
INSERT INTO `mob_spell_lists` VALUES ('Bomb_Queen',295,100,24,255); -- enfire (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Bomb_Queen',295,147,73,85);  -- fire_iv (73~85)
INSERT INTO `mob_spell_lists` VALUES ('Bomb_Queen',295,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Bomb_Queen',295,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Bomb_Queen',295,235,24,255); -- burn (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Bomb_Queen',295,249,10,255); -- blaze_spikes (10~255)

-- Gotoh_Zha_the_Redolent_BLM (296)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,251,1,255); -- shock_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_BLM',296,274,1,255); -- sleepga_ii (1~255)

-- Gotoh_Zha_the_Redolent_WHM (297)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,5,1,255);   -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,10,1,255);  -- curaga_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,14,1,255);  -- poisona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,15,1,255);  -- paralyna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,16,1,255);  -- blindna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,17,1,255);  -- silena (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,18,1,255);  -- stona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,19,1,255);  -- viruna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,20,1,255);  -- cursna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,40,1,255);  -- banishga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,61,1,255);  -- barblizzard (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gotoh_Zha_the_Redolent_WHM',297,112,1,255); -- flash (1~255)

-- Drumskull_Zogdregg (298)
INSERT INTO `mob_spell_lists` VALUES ('Drumskull_Zogdregg',298,191,1,255); -- stonega_iii (1~255)

-- Humanoid_BLU (299)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,513,42,255); -- venom_shell (42~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,517,61,255); -- metallic_body (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,519,26,255); -- screwdriver (26~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,521,42,255); -- mp_drainkiss (42~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,522,34,255); -- death_ray (34~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,524,1,255);  -- sandspin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,527,34,255); -- smite_of_rage (34~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,529,18,255); -- bludgeon (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,530,48,255); -- refueling (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,531,50,255); -- ice_break (50~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,532,44,255); -- blitzstrahl (44~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,533,50,255); -- self-destruct (50~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,534,40,255); -- mysterious_light (40~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,535,52,255); -- cold_wave (52~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,536,22,255); -- poison_breath (22~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,537,44,255); -- stinking_gas (44~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,538,62,255); -- memento_mori (62~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,539,40,255); -- terror_touch (40~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,540,63,255); -- spinal_cleave (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,541,48,255); -- blood_saber (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,542,36,255); -- digest (36~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,543,44,255); -- mandibular_bite (44~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,544,18,255); -- cursed_sphere (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,545,48,255); -- sickle_slash (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,547,8,255);  -- cocoon (8~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,548,52,255); -- filamented_hold (52~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,549,1,29);   -- pollen (1~29)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,551,4,255);  -- power_attack (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,554,60,255); -- death_scissors (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,555,46,255); -- magnetite_cloud (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,557,61,255); -- eyes_on_me (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,560,63,255); -- frenetic_rip (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,561,50,255); -- frightful_roar (50~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,563,54,255); -- hecatomb_wave (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,564,62,255); -- body_slam (62~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,565,54,255); -- radiant_breath (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,567,16,255); -- helldive (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,569,38,255); -- jet_stream (38~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,570,20,255); -- blood_drain (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,572,32,255); -- sound_blast (32~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,573,64,255); -- feather_tickle (64~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,574,56,255); -- feather_barrier (56~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,575,48,255); -- jettatura (48~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,576,64,255); -- yawn (64~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,577,1,255);  -- foot_kick (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,578,30,57);  -- wild_carrot (30~57)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,579,64,255); -- voracious_trunk (64~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,581,16,255); -- healing_breeze (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,582,32,255); -- chaotic_eye (32~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,584,16,255); -- sheep_song (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,585,73,255); -- ram_charge (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,587,20,255); -- claw_cyclone (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,588,71,255); -- lowing (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,589,60,255); -- dimensional_death (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,591,71,255); -- heat_breath (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,592,38,255); -- blank_gaze (38~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,593,58,255); -- magic_fruit (58~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,594,38,255); -- uppercut (38~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,595,62,255); -- 1000_needles (62~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,596,36,255); -- pinecone_bomb (36~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,597,4,255);  -- sprout_smack (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,598,24,255); -- soporific (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,599,8,255);  -- queasyshroom (8~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,603,4,255);  -- wild_oats (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,604,61,255); -- bad_breath (61~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,605,46,255); -- geist_wall (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,606,46,255); -- awful_eye (46~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,610,65,255); -- infrasonics (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,611,72,255); -- disseverment (72~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,612,74,255); -- actinic_burst (74~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,613,74,255); -- reactor_cool (74~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,614,72,255); -- saline_coat (72~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,615,75,255); -- plasma_charge (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,616,73,255); -- temporal_shift (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,617,75,255); -- vertical_cleave (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,618,18,255); -- blastbomb (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,620,12,255); -- battle_dance (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,621,66,255); -- sandspray (66~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,622,30,255); -- grand_slam (30~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,623,12,255); -- head_butt (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,626,28,255); -- bomb_toss (28~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,628,63,255); -- frypan (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,629,58,255); -- flying_hip_press (58~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,631,63,255); -- hydro_shot (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,632,67,255); -- diamondhide (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,633,67,255); -- enervation (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,634,58,255); -- light_of_penance (58~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,636,68,255); -- warm-up (68~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,637,68,255); -- firespit (68~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,638,12,255); -- feather_storm (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,640,69,255); -- tail_slap (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,641,69,255); -- hysteric_barrage (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,642,70,255); -- amplification (70~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,643,70,255); -- cannonball (70~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,644,73,255); -- mind_blast (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,645,75,255); -- exuviation (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,646,74,255); -- magic_hammer (74~255)
INSERT INTO `mob_spell_lists` VALUES ('Humanoid_BLU',299,647,65,255); -- zephyr_mantle (65~255)

-- Velionis (300)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,146,1,255); -- fire_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,151,1,255); -- blizzard_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,156,1,255); -- aero_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,161,1,255); -- stone_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,166,1,255); -- thunder_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,171,1,255); -- water_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,175,1,255); -- firaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,190,1,255); -- stonega_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,195,1,255); -- thundaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Velionis',300,200,1,255); -- waterga_ii (1~255)

-- Marquis_Forneus (301)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,242,1,255); -- absorb-acc (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,266,1,255); -- absorb-str (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,268,1,255); -- absorb-vit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,272,1,255); -- absorb-chr (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,275,1,255); -- absorb-tp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Forneus',301,277,1,255); -- dread_spikes (1~255)

-- Chamrosh (302)
INSERT INTO `mob_spell_lists` VALUES ('Chamrosh',302,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chamrosh',302,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chamrosh',302,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chamrosh',302,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chamrosh',302,359,1,255); -- silencega (1~255)

-- Lizardtrap (303)
INSERT INTO `mob_spell_lists` VALUES ('Lizardtrap',303,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lizardtrap',303,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lizardtrap',303,356,1,255); -- paralyga (1~255)

-- Ghul-I-Beaban_DRK (304)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,144,1,255); -- fire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,164,1,255); -- thunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,266,1,255); -- absorb-str (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,268,1,255); -- absorb-vit (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_DRK',304,272,1,255); -- absorb-chr (1~255)

-- Ghul-I-Beaban_BLM (305)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_BLM',305,145,1,255); -- fire_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_BLM',305,150,1,255); -- blizzard_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_BLM',305,174,1,255); -- firaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghul-I-Beaban_BLM',305,179,1,255); -- blizzaga (1~255)

-- Saa_Doyi_the_Fervid (306)
INSERT INTO `mob_spell_lists` VALUES ('Saa_Doyi_the_Fervid',306,320,1,255); -- katon_ichi (1~255)

-- Frost_Flambeau (307)
INSERT INTO `mob_spell_lists` VALUES ('Frost_Flambeau',307,180,1,255); -- blizzaga_ii (1~255)

-- TRUST_Shantotto (308)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,157,72,255); -- aero_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto',308,173,80,255); -- water_v (80~255)

-- TRUST_Kupipi (310)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,58,6,255);   -- paralyze (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,112,45,255); -- flash (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kupipi',310,143,32,255); -- erase (32~255)

-- TRUST_Excenmille (311)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Excenmille',311,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Excenmille',311,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Excenmille',311,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Excenmille',311,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Excenmille',311,112,45,255); -- flash (45~255)

-- TRUST_Curilla (314)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Curilla',314,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Curilla',314,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Curilla',314,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Curilla',314,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Curilla',314,112,45,255); -- flash (45~255)

-- TRUST_Ajido-Marujido (316)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,56,26,255);  -- slow (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,58,12,255);  -- paralyze (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,157,72,255); -- aero_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ajido-Marujido',316,260,64,255); -- dispel (64~255)

-- TRUST_Trion (317)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Trion',317,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Trion',317,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Trion',317,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Trion',317,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Trion',317,112,37,255); -- flash (37~255)

-- TRUST_Zeid (318)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,242,61,255); -- absorb-acc (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,245,10,255); -- drain (10~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,246,62,255); -- drain_ii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,247,20,255); -- aspir (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,248,78,255); -- aspir_ii (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,252,37,255); -- stun (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,272,33,255); -- absorb-chr (33~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid',318,275,45,255); -- absorb-tp (45~255)

-- TRUST_Mihli_Aliapoh (321)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,47,76,255);  -- protect_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,52,76,255);  -- shell_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,95,32,255);  -- esuna (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mihli_Aliapoh',321,143,32,255); -- erase (32~255)

-- TRUST_Valaineral (322)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Valaineral',322,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Valaineral',322,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Valaineral',322,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Valaineral',322,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Valaineral',322,112,37,255); -- flash (37~255)

-- TRUST_Joachim (323)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,1,2,255);    -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,2,22,255);   -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,3,42,255);   -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,4,82,255);   -- cure_iv (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,14,12,255);  -- poisona (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,15,18,255);  -- paralyna (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,16,28,255);  -- blindna (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,17,38,255);  -- silena (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,18,78,255);  -- stona (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,19,68,255);  -- viruna (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,20,58,255);  -- cursna (58~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,378,5,255);  -- armys_paeon (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,379,15,255); -- armys_paeon_ii (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,380,35,255); -- armys_paeon_iii (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,381,45,255); -- armys_paeon_iv (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,382,65,255); -- armys_paeon_v (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,383,78,255); -- armys_paeon_vi (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,386,25,255); -- mages_ballad (25~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,387,55,255); -- mages_ballad_ii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,388,85,255); -- mages_ballad_iii (85~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,399,11,255); -- sword_madrigal (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,400,51,255); -- blade_madrigal (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,419,29,255); -- advancing_march (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,420,60,255); -- victory_march (60~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,421,39,255); -- battlefield_elegy (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Joachim',323,422,59,255); -- carnage_elegy (59~255)

-- TRUST_Prishe (325)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,1,2,255);  -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,2,22,255); -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,3,42,255); -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,4,82,255); -- cure_iv (82~255)

-- TRUST_Ulmia (326)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,386,25,255); -- mages_ballad (25~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,387,55,255); -- mages_ballad_ii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,388,85,255); -- mages_ballad_iii (85~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,389,1,255);  -- knights_minne (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,390,21,255); -- knights_minne_ii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,391,41,255); -- knights_minne_iii (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,392,61,255); -- knights_minne_iv (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,393,80,255); -- knights_minne_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,394,3,255);  -- valor_minuet (3~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,395,23,255); -- valor_minuet_ii (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,396,43,255); -- valor_minuet_iii (43~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,397,63,255); -- valor_minuet_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,398,87,255); -- valor_minuet_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,399,11,255); -- sword_madrigal (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,400,51,255); -- blade_madrigal (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,402,71,255); -- archers_prelude (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,419,29,255); -- advancing_march (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,420,60,255); -- victory_march (60~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ulmia',326,470,82,255); -- sentinels_scherzo (82~255)

-- TRUST_Shikaree_Z (327)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,1,2,255);    -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,2,22,255);   -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,3,42,255);   -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,4,82,255);   -- cure_iv (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,14,12,255);  -- poisona (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,15,18,255);  -- paralyna (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,16,28,255);  -- blindna (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,17,38,255);  -- silena (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,18,78,255);  -- stona (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,19,68,255);  -- viruna (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,20,58,255);  -- cursna (58~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,57,80,255);  -- haste (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shikaree_Z',327,143,64,255); -- erase (64~255)

-- TRUST_Cherukiki (328)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,59,4,255);   -- silence (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,108,21,255); -- regen (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,110,44,255); -- regen_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,111,66,255); -- regen_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Cherukiki',328,477,86,255); -- regen_iv (86~255)

-- TRUST_Gessho (330)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,338,12,255); -- utsusemi_ichi (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,339,37,255); -- utsusemi_ni (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,344,23,255); -- hojo_ichi (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,345,48,255); -- hojo_ni (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,347,19,255); -- kurayami_ichi (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,348,44,255); -- kurayami_ni (44~255)

-- TRUST_Gadalar (331)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gadalar',331,174,28,255); -- firaga (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gadalar',331,175,53,255); -- firaga_ii (53~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gadalar',331,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gadalar',331,249,10,255); -- blaze_spikes (10~255)

-- TRUST_Rainemard (332)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,47,77,255);  -- protect_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,52,87,255);  -- shell_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,100,24,255); -- enfire (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,101,22,255); -- enblizzard (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,102,20,255); -- enaero (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,103,18,255); -- enstone (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,104,16,255); -- enthunder (16~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,105,27,255); -- enwater (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,106,33,255); -- phalanx (33~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,107,33,255); -- phalanx_ii (33~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,109,41,255); -- refresh (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,473,82,255); -- refresh_ii (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,511,96,255); -- haste_ii (96~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,841,35,255); -- distract (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,842,85,255); -- distract_ii (85~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,843,42,255); -- frazzle (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rainemard',332,844,92,255); -- frazzle_ii (92~255)

-- TRUST_Ingrid (333)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid',333,20,29,255); -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid',333,28,5,255);  -- banish (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid',333,29,30,255); -- banish_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid',333,30,65,255); -- banish_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid',333,57,40,255); -- haste (40~255)

-- TRUST_Lehko_Habhoka (334)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,144,26,255); -- fire (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,145,76,255); -- fire_ii (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,149,34,255); -- blizzard (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,150,84,255); -- blizzard_ii (84~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,154,18,255); -- aero (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,155,68,255); -- aero_ii (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,159,2,255);  -- stone (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,160,52,255); -- stone_ii (52~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,164,42,255); -- thunder (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,165,92,255); -- thunder_ii (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,169,10,255); -- water (10~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lehko_Habhoka',334,170,60,255); -- water_ii (60~255)

-- TRUST_Nashmeira (335)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,1,2,255);    -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,2,22,255);   -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,3,42,255);   -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,4,82,255);   -- cure_iv (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,14,12,255);  -- poisona (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,15,18,255);  -- paralyna (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,16,28,255);  -- blindna (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,17,38,255);  -- silena (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,18,78,255);  -- stona (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,19,68,255);  -- viruna (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,20,58,255);  -- cursna (58~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira',335,143,64,255); -- erase (64~255)

-- TRUST_Ovjang (337)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,58,6,255);   -- paralyze (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,59,18,255);  -- silence (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,144,19,255); -- fire (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,145,50,255); -- fire_ii (50~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,146,71,255); -- fire_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,147,86,255); -- fire_iv (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,149,24,255); -- blizzard (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,150,55,255); -- blizzard_ii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,151,73,255); -- blizzard_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,152,89,255); -- blizzard_iv (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,154,14,255); -- aero (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,155,45,255); -- aero_ii (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,156,69,255); -- aero_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,157,83,255); -- aero_iv (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,159,4,255);  -- stone (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,160,35,255); -- stone_ii (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,161,65,255); -- stone_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,162,77,255); -- stone_iv (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,164,29,255); -- thunder (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,165,60,255); -- thunder_ii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,166,75,255); -- thunder_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,167,92,255); -- thunder_iv (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,169,9,255);  -- water (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,170,40,255); -- water_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,171,67,255); -- water_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,172,80,255); -- water_iv (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ovjang',337,260,32,255); -- dispel (32~255)

-- TRUST_Fablinix (344)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Fablinix',344,1,8,255);    -- cure (8~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Fablinix',344,2,26,255);   -- cure_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Fablinix',344,3,52,255);   -- cure_iii (52~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Fablinix',344,4,96,255);   -- cure_iv (96~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Fablinix',344,105,27,255); -- enwater (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Fablinix',344,252,45,255); -- stun (45~255)

-- TRUST_D_Shantotto (346)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,144,9,255);  -- fire (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,145,34,255); -- fire_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,146,59,255); -- fire_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,147,72,255); -- fire_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,148,83,255); -- fire_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,157,72,255); -- aero_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_D_Shantotto',346,173,80,255); -- water_v (80~255)

-- TRUST_Karaha-Baruha (348)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,64,25,255);  -- barthunder (25~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,65,5,255);   -- barwater (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,66,17,255);  -- barfira (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,67,21,255);  -- barblizzara (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,68,13,255);  -- baraera (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,69,5,255);   -- barstonra (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,70,25,255);  -- barthundra (25~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,71,9,255);   -- barwatera (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,43,7,255); -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,44,27,255); -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,45,47,255); -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,46,63,255); -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,47,75,255); -- protect_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,48,17,255); -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,49,37,255); -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,50,57,255); -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,51,68,255); -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,52,75,255); -- shell_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Karaha-Baruha',348,134,75,255); -- shellra_v (75~255)

-- TRUST_Noillurie (354)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Noillurie',354,1,2,255);  -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Noillurie',354,2,22,255); -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Noillurie',354,3,42,255); -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Noillurie',354,4,82,255); -- cure_iv (82~255)

-- TRUST_Ferreous_Coffin (356)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,12,25,255);  -- raise (25~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,13,56,255);  -- raise_ii (56~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,140,70,255); -- raise_iii (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ferreous_Coffin',356,143,32,255); -- erase (32~255)

-- TRUST_Rahal (363)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,106,77,255); -- phalanx (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,112,37,255); -- flash (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rahal',363,310,85,255); -- enlight (85~255)

-- TRUST_Koru-Moru (364)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,1,3,255);    -- cure (3~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,2,14,255);   -- cure_ii (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,3,26,255);   -- cure_iii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,4,48,255);   -- cure_iv (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,23,1,255);   -- dia (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,24,31,255);  -- dia_ii (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,25,75,255);  -- dia_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,47,77,255);  -- protect_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,52,87,255);  -- shell_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,79,75,255);  -- slow_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,107,75,255); -- phalanx_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,109,41,255); -- refresh (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,260,32,255); -- dispel (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,473,82,255); -- refresh_ii (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,511,96,255); -- haste_ii (96~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,841,35,255); -- distract (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,842,85,255); -- distract_ii (85~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,845,48,255); -- flurry (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Koru-Moru',364,846,96,255); -- flurry_ii (96~255)

-- TRUST_Pieuje_UC (365)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,95,32,255);  -- esuna (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,96,55,255);  -- auspice (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,108,21,255); -- regen (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,110,44,255); -- regen_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,111,66,255); -- regen_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,112,45,255); -- flash (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,143,32,255); -- erase (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Pieuje_UC',365,477,86,255); -- regen_iv (86~255)

-- TRUST_Apururu_UC (367)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,7,16,255);   -- curaga (16~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,8,31,255);   -- curaga_ii (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,9,51,255);   -- curaga_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,10,71,255);  -- curaga_iv (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,11,91,255);  -- curaga_v (91~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,47,76,255);  -- protect_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,52,76,255);  -- shell_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,54,28,255);  -- stoneskin (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Apururu_UC',367,143,32,255); -- erase (32~255)

-- TRUST_Rughadjeen (373)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rughadjeen',373,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rughadjeen',373,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rughadjeen',373,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rughadjeen',373,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rughadjeen',373,21,55,255);  -- holy (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rughadjeen',373,112,37,255); -- flash (37~255)

-- TRUST_Kukki-Chebukki (374)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,174,28,255); -- firaga (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,175,53,255); -- firaga_ii (53~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,179,32,255); -- blizzaga (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,180,57,255); -- blizzaga_ii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,184,23,255); -- aeroga (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,185,48,255); -- aeroga_ii (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,189,15,255); -- stonega (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,190,40,255); -- stonega_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,194,36,255); -- thundaga (36~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,195,61,255); -- thundaga_ii (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,199,19,255); -- waterga (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,200,44,255); -- waterga_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,235,24,255); -- burn (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,236,22,255); -- frost (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,237,20,255); -- choke (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,238,18,255); -- rasp (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,239,16,255); -- shock (16~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,240,27,255); -- drown (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,273,31,255); -- sleepga (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,274,56,255); -- sleepga_ii (56~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,496,90,255); -- firaja (90~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,497,93,255); -- blizzaja (93~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,498,87,255); -- aeroja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,499,81,255); -- stoneja (81~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,500,87,255); -- thundaja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kukki-Chebukki',374,501,84,255); -- waterja (84~255)

-- TRUST_Arciela (378)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,47,77,255);  -- protect_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,52,87,255);  -- shell_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,79,75,255);  -- slow_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,80,75,255);  -- paralyze_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,109,41,255); -- refresh (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,473,82,255); -- refresh_ii (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela',378,511,96,255); -- haste_ii (96~255)

-- TRUST_Adelheid (381)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,99,41,255);  -- sandstorm (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,113,42,255); -- rainstorm (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,114,43,255); -- windstorm (43~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,115,44,255); -- firestorm (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,116,45,255); -- hailstorm (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,117,46,255); -- thunderstorm (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,118,47,255); -- voidstorm (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,119,48,255); -- aurorastorm (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,144,16,255); -- fire (16~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,145,42,255); -- fire_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,146,63,255); -- fire_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,148,91,255); -- fire_v (91~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,149,20,255); -- blizzard (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,150,46,255); -- blizzard_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,151,66,255); -- blizzard_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,153,95,255); -- blizzard_v (95~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,154,12,255); -- aero (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,155,38,255); -- aero_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,156,60,255); -- aero_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,157,72,255); -- aero_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,158,87,255); -- aero_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,159,4,255);  -- stone (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,160,30,255); -- stone_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,161,54,255); -- stone_iii (54~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,162,70,255); -- stone_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,163,79,255); -- stone_v (79~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,164,24,255); -- thunder (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,165,51,255); -- thunder_ii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,166,69,255); -- thunder_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,168,99,255); -- thunder_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,169,8,255);  -- water (8~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,170,34,255); -- water_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,171,57,255); -- water_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,172,71,255); -- water_iv (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,173,83,255); -- water_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,278,18,255); -- geohelix (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,279,20,255); -- hydrohelix (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,280,22,255); -- anemohelix (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,281,24,255); -- pyrohelix (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,282,26,255); -- cryohelix (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,283,28,255); -- ionohelix (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,284,30,255); -- noctohelix (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Adelheid',381,285,32,255); -- luminohelix (32~255)

-- TRUST_Amchuchu (382)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,43,20,255);  -- protect (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,44,40,255);  -- protect_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,45,60,255);  -- protect_iii (60~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,46,80,255);  -- protect_iv (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,48,10,255);  -- shell (10~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,49,30,255);  -- shell_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,50,50,255);  -- shell_iii (50~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,51,70,255);  -- shell_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,52,90,255);  -- shell_v (90~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,54,55,255);  -- stoneskin (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,106,68,255); -- phalanx (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,108,23,255); -- regen (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,109,62,255); -- refresh (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,110,48,255); -- regen_ii (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,111,70,255); -- regen_iii (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,112,45,255); -- flash (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Amchuchu',382,477,99,255); -- regen_iv (99~255)

-- TRUST_Halver (385)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Halver',385,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Halver',385,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Halver',385,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Halver',385,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Halver',385,112,37,255); -- flash (37~255)

-- TRUST_Leonoyne (387)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,179,32,255); -- blizzaga (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,180,57,255); -- blizzaga_ii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,250,20,255); -- ice_spikes (20~255)

-- TRUST_Kayeel-Payeel (389)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,179,32,255); -- blizzaga (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,180,57,255); -- blizzaga_ii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,194,36,255); -- thundaga (36~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,195,61,255); -- thundaga_ii (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,206,50,255); -- freeze (50~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,207,75,255); -- freeze_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,212,56,255); -- burst (56~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,213,75,255); -- burst_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,497,93,255); -- blizzaja (93~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Kayeel-Payeel',389,500,87,255); -- thundaja (87~255)

-- TRUST_Robel-Akbel (390)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,174,28,255); -- firaga (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,175,53,255); -- firaga_ii (53~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,179,32,255); -- blizzaga (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,180,57,255); -- blizzaga_ii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,184,23,255); -- aeroga (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,185,48,255); -- aeroga_ii (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,189,15,255); -- stonega (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,190,40,255); -- stonega_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,194,36,255); -- thundaga (36~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,195,61,255); -- thundaga_ii (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,199,19,255); -- waterga (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,200,44,255); -- waterga_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,496,90,255); -- firaja (90~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,497,93,255); -- blizzaja (93~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,498,87,255); -- aeroja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,499,81,255); -- stoneja (81~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,500,87,255); -- thundaja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Robel-Akbel',390,501,84,255); -- waterja (84~255)

-- TRUST_Yoran-Oran_UC (393)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Yoran-Oran_UC',393,143,32,255); -- erase (32~255)

-- TRUST_Sylvie_UC (394)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,1,2,255);    -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,2,22,255);   -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,3,42,255);   -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,4,82,255);   -- cure_iv (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,14,12,255);  -- poisona (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,15,18,255);  -- paralyna (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,16,28,255);  -- blindna (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,17,38,255);  -- silena (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,18,78,255);  -- stona (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,19,68,255);  -- viruna (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,20,58,255);  -- cursna (58~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,57,80,255);  -- haste (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,768,15,255); -- indi-regen (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,770,30,255); -- indi-refresh (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,771,93,255); -- indi-haste (93~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,779,34,255); -- indi-fury (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,781,46,255); -- indi-acumen (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,783,10,255); -- indi-precision (10~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Sylvie_UC',394,788,76,255); -- indi-frailty (76~255)

-- TRUST_Balamor (396)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Balamor',396,272,33,255); -- absorb-chr (33~255)

-- TRUST_August (397)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,21,55,255);  -- holy (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,22,99,255);  -- holy_ii (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,97,61,255);  -- reprisal (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_August',397,112,37,255); -- flash (37~255)

-- TRUST_Rosulatia (398)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,189,15,255); -- stonega (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,190,40,255); -- stonega_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Rosulatia',398,191,63,255); -- stonega_iii (63~255)

-- TRUST_Teodor (399)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,174,28,255); -- firaga (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,175,53,255); -- firaga_ii (53~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,179,32,255); -- blizzaga (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,180,57,255); -- blizzaga_ii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,184,23,255); -- aeroga (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,185,48,255); -- aeroga_ii (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,189,15,255); -- stonega (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,190,40,255); -- stonega_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,194,36,255); -- thundaga (36~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,195,61,255); -- thundaga_ii (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,199,19,255); -- waterga (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,200,44,255); -- waterga_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,496,90,255); -- firaja (90~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,497,93,255); -- blizzaja (93~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,498,87,255); -- aeroja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,499,81,255); -- stoneja (81~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,500,87,255); -- thundaja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Teodor',399,501,84,255); -- waterja (84~255)

-- TRUST_Ullegore (400)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,219,94,255); -- comet (94~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ullegore',400,252,45,255); -- stun (45~255)

-- TRUST_King_of_Hearts (402)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,1,2,255);    -- cure (2~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,2,22,255);   -- cure_ii (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,3,42,255);   -- cure_iii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,4,82,255);   -- cure_iv (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,14,12,255);  -- poisona (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,15,18,255);  -- paralyna (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,16,28,255);  -- blindna (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,17,38,255);  -- silena (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,18,78,255);  -- stona (78~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,19,68,255);  -- viruna (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,20,58,255);  -- cursna (58~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,23,1,255);   -- dia (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,24,31,255);  -- dia_ii (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,25,75,255);  -- dia_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,47,77,255);  -- protect_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,52,87,255);  -- shell_v (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,106,33,255); -- phalanx (33~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,107,75,255); -- phalanx_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,109,41,255); -- refresh (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,143,64,255); -- erase (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,174,28,255); -- firaga (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,175,53,255); -- firaga_ii (53~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,177,90,255); -- firaga_iv (90~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,260,32,255); -- dispel (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,473,82,255); -- refresh_ii (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,493,95,255); -- temper (95~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_King_of_Hearts',402,511,96,255); -- haste_ii (96~255)

-- TRUST_AAHM (405)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,338,12,255); -- utsusemi_ichi (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,339,37,255); -- utsusemi_ni (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,344,23,255); -- hojo_ichi (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,345,48,255); -- hojo_ni (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,347,19,255); -- kurayami_ichi (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,348,44,255); -- kurayami_ni (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAHM',405,510,88,255); -- migawari_ichi (88~255)

-- TRUST_AAEV (406)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,1,5,255);    -- cure (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,2,17,255);   -- cure_ii (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,3,30,255);   -- cure_iii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,4,55,255);   -- cure_iv (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,21,55,255);  -- holy (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,22,99,255);  -- holy_ii (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,106,77,255); -- phalanx (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,112,37,255); -- flash (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AAEV',406,310,85,255); -- enlight (85~255)

-- TRUST_AATT (408)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,220,3,41);   -- poison (3~41)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,221,42,255); -- poison_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,230,10,34);  -- bio (10~34)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,231,35,255); -- bio_ii (35~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,247,20,255); -- aspir (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,248,20,255); -- aspir_ii (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,273,31,55);  -- sleepga (31~55)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_AATT',408,274,56,255); -- sleepga_ii (56~255)

-- TRUST_Iroha (410)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha',410,134,75,255); -- shellra_v (75~255)

-- TRUST_Ygnas (411)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,5,61,255);   -- cure_v (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,6,80,255);   -- cure_vi (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,43,7,255);   -- protect (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,44,27,255);  -- protect_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,45,47,255);  -- protect_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,47,76,255);  -- protect_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,48,17,255);  -- shell (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,49,37,255);  -- shell_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,50,57,255);  -- shell_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,51,68,255);  -- shell_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,52,76,255);  -- shell_v (76~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ygnas',411,143,32,255); -- erase (32~255)

-- TRUST_Lion_II (418)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lion_II',418,338,12,255); -- utsusemi_ichi (12~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Lion_II',418,339,37,255); -- utsusemi_ni (37~255)

-- TRUST_Zeid_II (419)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid_II',419,243,91,255); -- absorb-attri (91~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Zeid_II',419,252,37,255); -- stun (37~255)

-- TRUST_Prishe_II (420)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe_II',420,7,16,255);  -- curaga (16~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe_II',420,8,31,255);  -- curaga_ii (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe_II',420,9,51,255);  -- curaga_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe_II',420,10,71,255); -- curaga_iv (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe_II',420,11,91,255); -- curaga_v (91~255)

-- TRUST_Nashmeira_II (421)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,1,1,255);    -- cure (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,2,11,255);   -- cure_ii (11~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,3,21,255);   -- cure_iii (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,4,41,255);   -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,5,61,255);   -- cure_v (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,6,80,255);   -- cure_vi (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,7,16,255);   -- curaga (16~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,8,31,255);   -- curaga_ii (31~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,9,51,255);   -- curaga_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,10,71,255);  -- curaga_iv (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,11,91,255);  -- curaga_v (91~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,14,6,255);   -- poisona (6~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,15,9,255);   -- paralyna (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,16,14,255);  -- blindna (14~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,17,19,255);  -- silena (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,18,39,255);  -- stona (39~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,19,34,255);  -- viruna (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,20,29,255);  -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Nashmeira_II',421,143,32,255); -- erase (32~255)

-- TRUST_Mumor_II (424)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,144,13,255); -- fire (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,145,38,255); -- fire_ii (38~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,146,62,255); -- fire_iii (62~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,147,73,255); -- fire_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,148,86,255); -- fire_v (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,150,42,255); -- blizzard_ii (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,151,64,255); -- blizzard_iii (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,152,74,255); -- blizzard_iv (74~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,153,89,255); -- blizzard_v (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,157,72,82);  -- aero_iv (72~82)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,158,83,255); -- aero_v (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,163,77,255); -- stone_v (77~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,168,92,255); -- thunder_v (92~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,173,80,255); -- water_v (80~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,174,28,255); -- firaga (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,175,53,255); -- firaga_ii (53~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,179,32,255); -- blizzaga (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,180,57,255); -- blizzaga_ii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,184,23,255); -- aeroga (23~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,185,48,255); -- aeroga_ii (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,189,15,255); -- stonega (15~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,190,40,255); -- stonega_ii (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,194,36,255); -- thundaga (36~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,195,61,255); -- thundaga_ii (61~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,199,19,255); -- waterga (19~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,200,44,255); -- waterga_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,496,90,255); -- firaja (90~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,497,93,255); -- blizzaja (93~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,498,87,255); -- aeroja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,499,81,255); -- stoneja (81~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,500,87,255); -- thundaja (87~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Mumor_II',424,501,84,255); -- waterja (84~255)

-- TRUST_Ingrid_II (425)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid_II',425,20,29,255); -- cursna (29~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid_II',425,21,50,94);  -- holy (50~94)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid_II',425,22,95,255); -- holy_ii (95~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid_II',425,28,5,29);   -- banish (5~29)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid_II',425,29,30,64);  -- banish_ii (30~64)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid_II',425,30,65,89);  -- banish_iii (65~89)

-- TRUST_Arciela_II (426)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,79,75,255);  -- slow_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,80,75,255);  -- paralyze_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,109,41,255); -- refresh (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,144,9,255);  -- fire (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,145,34,255); -- fire_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,146,59,255); -- fire_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,147,72,255); -- fire_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,148,99,255); -- fire_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,149,24,255); -- blizzard (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,150,56,255); -- blizzard_ii (56~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,151,73,255); -- blizzard_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,152,89,255); -- blizzard_iv (89~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,153,99,255); -- blizzard_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,155,34,255); -- aero_ii (34~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,156,59,255); -- aero_iii (59~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,157,72,255); -- aero_iv (72~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,158,99,255); -- aero_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,160,26,255); -- stone_ii (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,161,51,255); -- stone_iii (51~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,162,68,255); -- stone_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,163,99,255); -- stone_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,165,46,255); -- thunder_ii (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,166,66,255); -- thunder_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,167,75,255); -- thunder_iv (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,168,99,255); -- thunder_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,169,5,255);  -- water (5~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,170,30,255); -- water_ii (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,171,55,255); -- water_iii (55~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,173,99,255); -- water_v (99~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,260,64,255); -- dispel (64~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,286,83,255); -- addle (83~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,473,82,255); -- refresh_ii (82~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,511,96,255); -- haste_ii (96~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,845,48,255); -- flurry (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Arciela_II',426,846,96,255); -- flurry_ii (96~255)

-- TRUST_Iroha_II (427)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,125,7,255);  -- protectra (7~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,126,27,255); -- protectra_ii (27~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,127,47,255); -- protectra_iii (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,128,63,255); -- protectra_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,129,75,255); -- protectra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,130,17,255); -- shellra (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,131,37,255); -- shellra_ii (37~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,132,57,255); -- shellra_iii (57~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,134,75,255); -- shellra_v (75~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Iroha_II',427,205,75,255); -- flare_ii (75~255)

-- TRUST_Shantotto_II (428)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto_II',428,144,9,255);  -- fire (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto_II',428,149,17,255); -- blizzard (17~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto_II',428,154,9,255);  -- aero (9~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto_II',428,159,1,255);  -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto_II',428,164,21,255); -- thunder (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Shantotto_II',428,169,5,255);  -- water (5~255)

-- Siren (429)
INSERT INTO `mob_spell_lists` VALUES ('Siren',429,423,1,255); -- massacre_elegy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Siren',429,462,1,255); -- magic_finale (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Siren',429,873,1,255); -- wind_threnody_ii (1~255)

-- Ebony_Pudding (430)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,147,24,255); -- fire_iv (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,152,24,255); -- blizzard_iv (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,157,24,255); -- aero_iv (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,162,24,255); -- stone_iv (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,167,24,255); -- thunder_iv (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,172,24,255); -- water_iv (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,176,69,255); -- firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,181,71,255); -- blizzaga_iii (71~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,186,67,255); -- aeroga_iii (67~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,196,73,255); -- thundaga_iii (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,204,60,255); -- flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,206,50,255); -- freeze (50~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,208,52,255); -- tornado (52~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,212,56,255); -- burst (56~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,214,58,255); -- flood (58~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,231,35,255); -- bio_ii (35~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,235,24,255); -- burn (24~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,236,22,255); -- frost (22~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,237,20,255); -- choke (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,238,18,255); -- rasp (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,239,16,255); -- shock (16~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,240,27,255); -- drown (27~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,245,12,255); -- drain (12~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,247,25,255); -- aspir (25~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,249,10,255); -- blaze_spikes (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,252,45,255); -- stun (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,254,4,255);  -- blind (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,258,7,255);  -- bind (7~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,273,31,255); -- sleepga (31~255)
INSERT INTO `mob_spell_lists` VALUES ('Ebony_Pudding',430,274,56,255); -- sleepga_ii (56~255)

-- Kamlanaut (Apoc Nigh) (431)
INSERT INTO `mob_spell_lists` VALUES ('Kamlanaut (Apoc Nigh)',431,356,76,255); -- paralyga (76~255)
INSERT INTO `mob_spell_lists` VALUES ('Kamlanaut (Apoc Nigh)',431,357,75,255); -- slowga (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Kamlanaut (Apoc Nigh)',431,359,75,255); -- silencega (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Kamlanaut (Apoc Nigh)',431,360,75,255); -- dispelga (75~255)
INSERT INTO `mob_spell_lists` VALUES ('Kamlanaut (Apoc Nigh)',431,366,76,255); -- graviga (76~255)

-- EaldNarche (Apoc Nigh) (432)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,176,75,255); -- firaga_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,181,75,255); -- blizzaga_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,186,75,255); -- aeroga_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,191,75,255); -- stonega_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,196,75,255); -- thundaga_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,201,75,255); -- waterga_iii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,274,75,255); -- sleepga_ii (75~255)
INSERT INTO `mob_spell_lists` VALUES ('EaldNarche (Apoc Nigh)',432,362,75,255); -- bindga (75~255)

-- Bladmall (433)
INSERT INTO `mob_spell_lists` VALUES ('Bladmall',433,46,63,255);  -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Bladmall',433,133,68,255); -- shellra_iv (68~255)
INSERT INTO `mob_spell_lists` VALUES ('Bladmall',433,172,70,255); -- water_iv (70~255)
INSERT INTO `mob_spell_lists` VALUES ('Bladmall',433,200,44,255); -- waterga_ii (44~255)
INSERT INTO `mob_spell_lists` VALUES ('Bladmall',433,201,65,255); -- waterga_iii (65~255)
INSERT INTO `mob_spell_lists` VALUES ('Bladmall',433,214,1,255);  -- flood (1~255)

-- Nepionic_Bladmall (434)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Bladmall',434,4,41,255);  -- cure_iv (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Bladmall',434,46,63,255); -- protect_iv (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Bladmall',434,51,68,255); -- shell_iv (68~255)

-- TRUST_Matsui-P (435)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,149,24,255); -- blizzard (24~255)

-- Ground_Guzzler (436)
INSERT INTO `mob_spell_lists` VALUES ('Ground_Guzzler',436,54,68,255);  -- stoneskin (68~255)
INSERT INTO `mob_spell_lists` VALUES ('Ground_Guzzler',436,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Ground_Guzzler',436,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Ground_Guzzler',436,238,18,255); -- rasp (18~255)
INSERT INTO `mob_spell_lists` VALUES ('Ground_Guzzler',436,258,7,255);  -- bind (7~255)

-- Shoggoth (437)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shoggoth',437,274,1,255); -- sleepga_ii (1~255)

-- FarrucaFly (438)
INSERT INTO `mob_spell_lists` VALUES ('FarrucaFly',438,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('FarrucaFly',438,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('FarrucaFly',438,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('FarrucaFly',438,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('FarrucaFly',438,366,1,255); -- graviga (1~255)

-- Gjenganger (439)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gjenganger',439,247,1,255); -- aspir (1~255)

-- Erebus (440)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erebus',440,201,1,255); -- waterga_iii (1~255)

-- Feuerunke (441)
INSERT INTO `mob_spell_lists` VALUES ('Feuerunke',441,357,1,255); -- slowga (1~255)

-- Dawon (442)
INSERT INTO `mob_spell_lists` VALUES ('Dawon',442,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dawon',442,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dawon',442,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dawon',442,366,1,255); -- graviga (1~255)

-- Aither (443)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,102,1,255); -- enaero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,216,1,255); -- gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aither',443,237,1,255); -- choke (1~255)

-- Pruina (444)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,258,1,255); -- bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pruina',444,313,1,255); -- enblizzard_ii (1~255)

-- Deorc (445)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,260,1,255); -- dispel (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,272,1,255); -- absorb-chr (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Deorc',445,274,1,255); -- sleepga_ii (1~255)

-- Beorht (446)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,24,1,255);  -- dia_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,30,1,255);  -- banish_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,34,1,255);  -- diaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,40,1,255);  -- banishga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,108,1,255); -- regen (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beorht',446,112,1,255); -- flash (1~255)

-- Eorthe (447)
INSERT INTO `mob_spell_lists` VALUES ('Eorthe',447,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eorthe',447,103,1,255); -- enstone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eorthe',447,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eorthe',447,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eorthe',447,210,1,255); -- quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Eorthe',447,238,1,255); -- rasp (1~255)

-- Thunor (448)
INSERT INTO `mob_spell_lists` VALUES ('Thunor',448,104,1,255); -- enthunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Thunor',448,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Thunor',448,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Thunor',448,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Thunor',448,239,1,255); -- shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Thunor',448,251,1,255); -- shock_spikes (1~255)

-- Puretos (449)
INSERT INTO `mob_spell_lists` VALUES ('Puretos',449,100,1,255); -- enfire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Puretos',449,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Puretos',449,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Puretos',449,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Puretos',449,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Puretos',449,249,1,255); -- blaze_spikes (1~255)

-- Lacus (450)
INSERT INTO `mob_spell_lists` VALUES ('Lacus',450,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacus',450,105,1,255); -- enwater (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacus',450,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacus',450,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacus',450,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Lacus',450,226,1,255); -- poisonga_ii (1~255)

-- Skuld (451)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,356,1,255); -- paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,357,1,255); -- slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,362,1,255); -- bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Skuld',451,366,1,255); -- graviga (1~255)

-- Urd (452)
INSERT INTO `mob_spell_lists` VALUES ('Urd',452,4,1,255);   -- cure_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Urd',452,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Urd',452,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Urd',452,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Urd',452,108,1,255); -- regen (1~255)

-- Verthandi (453)
INSERT INTO `mob_spell_lists` VALUES ('Verthandi',453,22,1,255);  -- holy_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Verthandi',453,47,1,255);  -- protect_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Verthandi',453,52,1,255);  -- shell_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Verthandi',453,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Verthandi',453,108,1,255); -- regen (1~255)

-- Yilbegan (454)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,176,91,91); -- firaga_iii (91~91)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,181,90,90); -- blizzaga_iii (90~90)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,186,91,91); -- aeroga_iii (91~91)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,191,90,90); -- stonega_iii (90~90)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,196,91,91); -- thundaga_iii (91~91)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,201,90,90); -- waterga_iii (90~90)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,356,90,90); -- paralyga (90~90)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,357,90,90); -- slowga (90~90)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,359,91,91); -- silencega (91~91)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,362,90,90); -- bindga (90~90)
INSERT INTO `mob_spell_lists` VALUES ('Yilbegan',454,366,91,91); -- graviga (91~91)

-- Sapphirine_Quadav_LITD (455)
INSERT INTO `mob_spell_lists` VALUES ('Sapphirine_Quadav_LITD',455,45,1,255); -- protect_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sapphirine_Quadav_LITD',455,50,1,255); -- shell_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sapphirine_Quadav_LITD',455,53,1,255); -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sapphirine_Quadav_LITD',455,55,1,255); -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sapphirine_Quadav_LITD',455,57,1,255); -- haste (1~255)

-- The_Keeper (456)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,146,1,255); -- fire_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,151,1,255); -- blizzard_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,156,1,255); -- aero_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,161,1,255); -- stone_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,171,1,255); -- water_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,175,1,255); -- firaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,180,1,255); -- blizzaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,190,1,255); -- stonega_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Keeper',456,200,1,255); -- waterga_ii (1~255)

-- Mistdagger (457)
INSERT INTO `mob_spell_lists` VALUES ('Mistdagger',457,339,1,255); -- utsusemi_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mistdagger',457,508,1,255); -- yurin_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mistdagger',457,509,1,255); -- kakka_ichi (1~255)

-- The_Briars_elv (458)
INSERT INTO `mob_spell_lists` VALUES ('The_Briars_elv',458,34,1,255); -- diaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Briars_elv',458,47,1,255); -- protect_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Briars_elv',458,52,1,255); -- shell_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Briars_elv',458,57,1,255); -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Briars_elv',458,79,1,255); -- slow_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('The_Briars_elv',458,80,1,255); -- paralyze_ii (1~255)

-- Cernunnos (459)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,3,1,255);   -- cure_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,4,1,255);   -- cure_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,5,1,255);   -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cernunnos',459,255,1,255); -- break (1~255)

-- Nepionic_Soulflayer (460)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,151,1,60); -- blizzard_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,166,1,60); -- thunder_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,180,1,60); -- blizzaga_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,191,1,60); -- stonega_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,195,1,60); -- thundaga_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,201,1,60); -- waterga_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,212,1,60); -- burst (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,214,1,60); -- flood (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,231,1,60); -- bio_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,238,1,60); -- rasp (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,250,1,60); -- ice_spikes (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,252,1,60); -- stun (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,253,1,60); -- sleep (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,259,1,60); -- sleep_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,273,1,60); -- sleepga (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,274,1,60); -- sleepga_ii (1~60)

-- Bombast (461)
INSERT INTO `mob_spell_lists` VALUES ('Bombast',461,235,1,255); -- burn (1~255)

-- Goblin_Wolfman (462)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,245,10,255); -- drain (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,247,20,255); -- aspir (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,252,20,255); -- stun (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,272,33,255); -- absorb-chr (33~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,275,45,255); -- absorb-tp (45~255)

-- Goblin_Collector (463)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Collector',463,21,45,255); -- holy (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Collector',463,35,45,255); -- diaga_iii (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Collector',463,40,45,255); -- banishga_iii (45~255)

-- Shikaree_X (464)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,320,1,255);  -- Katon: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,323,1,255);  -- Hyoton: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,326,1,255);  -- Huton: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,329,1,255);  -- Doton: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,332,1,255);  -- Raiton: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,335,1,255);  -- Suiton: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,339,1,255);  -- Utsusemi: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,341,1,255);  -- Jubaku: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,344,1,255);  -- Hojo: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,347,1,255);  -- Kurayami: Ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,350,1,255);  -- Dokumori: Ichi (1~255)

-- Shikaree_Y (465)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,145,1,255); -- Fire II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,150,1,255); -- Blizzard II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,155,1,255); -- Aero II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,160,1,255); -- Stone II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,165,1,255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,170,1,255); -- Water II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,220,1,255); -- Poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,266,1,255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,267,1,255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,268,1,255); -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,269,1,255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,270,1,255); -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,271,1,255); -- Absorb-MND (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,272,1,255); -- Absorb-CHR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,275,1,255); -- Absorb-TP (1~255)

-- Shikaree_Z (466)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,14,1,255); -- poisona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,15,1,255); -- paralyna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,23,1,255); -- dia (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,28,1,255); -- banish (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,33,1,255); -- diaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,38,1,255); -- banishga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,53,1,255); -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Z',466,55,1,255); -- aquaveil (1~255)

-- Ixzdei_BLM (467)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_BLM',467,191,1,255); -- stonega_iii (1~255)

-- Ixzdei_RDM (468)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_RDM',468,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_RDM',468,254,1,255); -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ixzdei_RDM',468,260,1,255); -- dispel (1~255)

-- ixghrah_Manafont_spells (469)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',469,274,1,255); -- sleepga_ii (1~255)

-- ixghrah_Manafont_spells (470)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',470,40,1,255); -- banishga_iii (1~255)

-- ixghrah_Manafont_spells (471)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',471,181,1,255); -- blizzaga_iii (1~255)

-- ixghrah_Manafont_spells (472)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',472,186,1,255); -- aeroga_iii (1~255)

-- ixghrah_Manafont_spells (473)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',473,191,1,255); -- stonega_iii (1~255)

-- ixghrah_Manafont_spells (474)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',474,196,1,255); -- thundaga_iii (1~255)

-- ixghrah_Manafont_spells (475)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',475,201,1,255); -- waterga_iii (1~255)

-- ixghrah_Manafont_spells (476)
INSERT INTO `mob_spell_lists` VALUES ('ixghrah_Manafont_spells',476,176,1,255); -- firaga_iii (1~255)

-- Ghrah_Dark (477)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,260,1,255); -- dispel (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,269,1,255); -- absorb-agi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,270,1,255); -- absorb-int (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,271,1,255); -- absorb-mnd (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,272,1,255); -- absorb-chr (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,273,1,255); -- sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Dark',477,274,1,255); -- sleepga_ii (1~255)

-- Ghrah_Light (478)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,24,1,255);  -- dia_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,30,1,255);  -- banish_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,34,1,255);  -- diaga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,108,1,255); -- regen (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Light',478,112,1,255); -- flash (1~255)

-- Ghrah_Ice (479)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,101,1,255); -- enblizzard (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,236,1,255); -- frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Ice',479,258,1,255); -- bind (1~255)

-- Ghrah_Wind (480)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,102,1,255); -- enaero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,208,1,255); -- tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,216,1,255); -- gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Wind',480,237,1,255); -- choke (1~255)

-- Ghrah_Earth (481)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Earth',481,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Earth',481,103,1,255); -- enstone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Earth',481,163,1,255); -- stone_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Earth',481,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Earth',481,238,1,255); -- rasp (1~255)

-- Ghrah_Lightning (482)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Lightning',482,104,1,255); -- enthunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Lightning',482,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Lightning',482,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Lightning',482,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Lightning',482,239,1,255); -- shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Lightning',482,251,1,255); -- shock_spikes (1~255)

-- Ghrah_Water (483)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Water',483,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Water',483,173,1,255); -- water_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Water',483,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Water',483,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Water',483,226,1,255); -- poisonga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Water',483,240,1,255); -- drown (1~255)

-- Ghrah_Fire (484)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Fire',484,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Fire',484,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Fire',484,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ghrah_Fire',484,235,1,255); -- burn (1~255)

-- Sword_Sorcerer_Solisoq (485)
INSERT INTO `mob_spell_lists` VALUES ('Sword_Sorcerer_Solisoq',485,21,45,255); -- holy (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Sword_Sorcerer_Solisoq',485,34,45,255); -- diaga_ii (45~255)

-- Hakutaku (486)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,100,1,255); -- enfire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,148,1,255); -- fire_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,235,1,255); -- burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Hakutaku',486,249,1,255); -- blaze_spikes (1~255)

-- Shen (487)
INSERT INTO `mob_spell_lists` VALUES ('Shen',487,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shen',487,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shen',487,240,1,255); -- drown (1-255)

-- Shen's Filtrate (488)
INSERT INTO `mob_spell_lists` VALUES ('Shens_Filtrate',488,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shens_Filtrate',488,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shens_Filtrate',488,214,1,255); -- flood (1~255)

-- Cherukiki (489)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,4,1,255); -- Cure IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,21,1,255); -- Holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,34,1,255); -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,39,1,255); -- Banishga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,46,1,255); -- Protect IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,50,1,255); -- Shell III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,56,1,255); -- Slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,57,1,255); -- Haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,58,1,255); -- Paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,59,1,255); -- Silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,111,1,255); -- Regen III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Cherukiki_COP',489,112,1,255); -- Flash (1~255)

-- Kukki Chebukki (490)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,146,1,255); -- Fire III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,151,1,255); -- Blizzard III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,161,1,255); -- Stone III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,166,1,255); -- Thunder III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,175,1,255); -- Firaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,191,1,255); -- Stonega III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,195,1,255); -- Thundaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,201,1,255); -- Waterga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,232,1,255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,238,1,255); -- Rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,239,1,255); -- Shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Kukki_Chebukki_COP',490,274,1,255); -- Sleepga II (1~255)

-- Blackbeard (491)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,166,1,255); -- thunder iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,195,1,255); -- thundaga ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,201,1,255); -- waterga iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,250,1,255); -- ice spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Blackbeard',491,274,1,255); -- sleepga ii (1~255)

-- Silverhook (492)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,151,1,255); -- blizzard iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,180,1,255); -- blizzaga ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,201,1,255); -- waterga iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,212,1,255); -- burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,214,1,255); -- flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,250,1,255); -- ice spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,252,1,255); -- stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,253,1,255); -- sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Silverhook',492,274,1,255); -- sleepga ii (1~255)

-- Bastet (493)
INSERT INTO `mob_spell_lists` VALUES ('Bastet',493,165,1,255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bastet',493,195,1,255); -- Thundaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bastet',493,212,1,255); -- Burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bastet',493,239,1,255); -- Shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bastet',493,251,1,255); -- Shock Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bastet',493,252,1,255); -- Stun (1~255)

-- Ullikummi (494)
INSERT INTO `mob_spell_lists` VALUES ('Ullikummi',494,34,1,255);  -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ullikummi',494,40,1,255);  -- Banishga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ullikummi',494,112,1,255); -- Flash (1~255)

-- Olla Grande
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,21,50,94);   -- holy (50~94)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,24,36,255);  -- dia_ii (36~64)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,31,73,255);  -- banish_iv (73~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,35,74,255);  -- diaga_iii (74~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,40,69,255);  -- banishga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,53,19,255);  -- blink (19~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,54,28,255);  -- stoneskin (28~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,56,13,255);  -- slow (13~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,57,40,255);  -- haste (40~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,58,4,255);   -- paralyze (4~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,59,15,255);  -- silence (15~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,111,66,255); -- regen_iii (66~255)
INSERT INTO `mob_spell_lists` VALUES ('Olla_Grande',495,112,45,255); -- flash (45~255)

-- ID 496 free for use

-- Cemetery Cherry
INSERT INTO `mob_spell_lists` VALUES ('Cemetery_Cherry',497,274,1,255); -- Sleepga II
INSERT INTO `mob_spell_lists` VALUES ('Cemetery_Cherry',497,356,1,255); -- Paralyga
INSERT INTO `mob_spell_lists` VALUES ('Cemetery_Cherry',497,366,1,255); -- Graviga

-- Zoredonite (498)
INSERT INTO `mob_spell_lists` VALUES ('Zoredonite',498,3,1,255);   -- cure_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Zoredonite',498,30,1,255);  -- banish_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Zoredonite',498,112,1,255); -- flash (1~255)

-- Slendlix Spindlethumb (498)
INSERT INTO `mob_spell_lists` VALUES ('Slendlix_Spindlethumb',499,3,1,255);  -- cure_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Slendlix_Spindlethumb',499,23,1,255); -- dia (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Slendlix_Spindlethumb',499,33,1,255); -- diaga (1~255)

-- Toxic Tamlyn (500)
INSERT INTO `mob_spell_lists` VALUES ('Toxic_Tamlyn',500,231,1,255);  -- bio_ii (1~255)

-- Zirnitra (501)
INSERT INTO `mob_spell_lists` VALUES ('Zirnitra',501,359,75,255);  -- silencega (75~255)

-- Pyuu the Spatemaker (502)
INSERT INTO `mob_spell_lists` VALUES ('Pyuu_the_Spatemaker',502,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Pyuu_the_Spatemaker',502,201,1,255); -- waterga_iii (1~255)

-- Erle (503)
INSERT INTO `mob_spell_lists` VALUES ('Erle',503,156,1,255); -- aero_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erle',503,185,1,255); -- aeroga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Erle',503,208,1,255); -- tornado (1~255)

-- Mountain Worm NM (504)
INSERT INTO `mob_spell_lists` VALUES ('Mountain_Worm_NM',504,54,28,255);  -- stoneskin (28~255)
INSERT INTO `mob_spell_lists` VALUES ('Mountain_Worm_NM',504,162,68,76);  -- stone_iv (68~76)
INSERT INTO `mob_spell_lists` VALUES ('Mountain_Worm_NM',504,191,63,255); -- stonega_iii (63~255)
INSERT INTO `mob_spell_lists` VALUES ('Mountain_Worm_NM',504,210,54,255); -- quake (54~255)
INSERT INTO `mob_spell_lists` VALUES ('Mountain_Worm_NM',504,238,18,50);  -- rasp (18~50)
INSERT INTO `mob_spell_lists` VALUES ('Mountain_Worm_NM',504,258,7,255);  -- bind (7~255)

-- Sarcopsylla (505)
INSERT INTO `mob_spell_lists` VALUES ('Sarcopsylla',505,146,1,255); -- fire_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarcopsylla',505,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarcopsylla',505,204,1,255); -- flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Sarcopsylla',505,235,1,255); -- burn (1~255)

-- Poroggo with Providence (506)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,57,1,255); -- Haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,365,1,255); -- Breakga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,362,1,255); -- Bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,361,1,255); -- Blindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,366,1,255); -- Graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,357,1,255); -- Slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Providence',506,367,1,255); -- Death (1~255)

-- Two-faced Flan from Happy Caster ISNM3000
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,147,1,255); -- fire_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,152,1,255); -- blizzard_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,157,1,255); -- aero_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,162,1,255); -- stone_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,167,1,255); -- thunder_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,172,1,255); -- water_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,176,1,255); -- firaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,181,1,255); -- blizzaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,186,1,255); -- aeroga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,196,1,255); -- thundaga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,201,1,255); -- waterga_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,274,1,255); -- sleepga_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Two-faced_Flan',507,362,1,255); -- bindga (1~255)

-- Unfettered Twitherym (508)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,366,1,255); -- Graviga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,356,1,255); -- Paralyga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,362,1,255); -- Bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,357,1,255); -- Slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,359,1,255); -- silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,360,1,255); -- dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Unfettered_Twitherym',508,187,1,255); -- aeroga_iv (1~255)

-- Mastop (509)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,286,83,255); -- Addle (83-255)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,252,37,255); -- Stun (37-255)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,357,44,255); -- Slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,359,75,255); -- Silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,273,31,255); -- Sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,360,38,255); -- Dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mastop',509,365,49,255); -- Breakga (1~255)

/*-- Supernal Chapuli (510)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli',510,157,72,255); -- Aero IV (72-255)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli',510,187,75,255); -- Aeroga IV (75-255)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli',510,366,91,255); -- Graviga (91-255)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli',510,359,75,255); -- Silencega (75~255)

-- Supernal Chapuli HP under 50% (511)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli_low_50',511,158,83,255); -- Aero V (83-255)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli_low_50',511,188,9,255); -- Aeroga V (90-255)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli_low_50',511,366,91,255); -- Graviga (91-255)
INSERT INTO `mob_spell_lists` VALUES ('Supernal_Chapuli_low_50',511,359,75,255); -- Silencega (75~255)*/

/*-- Tax'et (512)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,146,83,255); -- Fire III (83-255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,147,37,255); -- Fire IV (37-255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,148,86,255); -- Fire V (86-255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,204,60,255); -- Flare (60~255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,176,69,255); -- Firaga_iii (69~255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,177,92,255); -- Firaga_iv (92~255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,178,99,255); -- Firaga V (99~255)
INSERT INTO `mob_spell_lists` VALUES ('Taxet',512,496,90,255); -- Firaja (90~255)*/

-- Jailer of Love (Fire) (513)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Fire',513,147,1,255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Fire',513,176,1,255); -- Firaga III (1~255)

-- Jailer of Love (Ice) (514)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Ice',514,152,1,255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Ice',514,181,1,255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Ice',514,362,1,255); -- Bindga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Ice',514,356,1,255); -- Paralyga (1~255)

-- Jailer of Love (Wind) (515)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Wind',515,157,1,255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Wind',515,186,1,255); -- Aeroga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Wind',515,359,1,255); -- Silencega (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Wind',515,366,1,255); -- Graviga (1~255)

-- Jailer of Love (Earth) (516)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Earth',516,162,1,255); -- Stone IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Earth',516,191,1,255); -- Stonega III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Earth',516,357,1,255); -- Slowga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Earth',516,365,1,255); -- Breakga (1~255)

-- Jailer of Love (Thunder) (517)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Lightning',517,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Lightning',517,196,1,255); -- Thundaga III (1~255)

-- Jailer of Love (Water) (518)
INSERT INTO `mob_spell_lists` VALUES('Jailer_of_Love_Water',518,172,1,255); -- Water IV (1~255)
INSERT INTO `mob_spell_lists` VALUES('Jailer_of_Love_Water',518,201,1,255); -- Waterga III (1~255)
INSERT INTO `mob_spell_lists` VALUES('Jailer_of_Love_Water',518,226,1,255); -- Poisonga II (1~255)

-- Jailer of Love (Light) (519)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Light',519,21,1,255); -- Holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Light',519,30,1,255); -- Banish III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Light',519,35,1,255); -- Diaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Light',519,40,1,255); -- Banishga III (1~255)

-- Jailer of Love (Dark) (520)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Dark',520,232,1,255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Dark',520,274,1,255); -- Sleepga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Dark',520,360,1,255); -- Dispelga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Jailer_of_Love_Dark',520,361,1,255); -- Blindga (1~255)

-- Aries (KS30 Today's Horoscope Ram) (521)
INSERT INTO `mob_spell_lists` VALUES ('Aries',521,54,1,255);  -- Stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Aries',521,356,1,255); -- Paralyga (1~255)

-- Craven Einherjar (522)
INSERT INTO `mob_spell_lists` VALUES ('Craven_Einherjar',522,152,1,255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Craven_Einherjar',522,181,1,255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Craven_Einherjar',522,206,1,255); -- Freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Craven_Einherjar',522,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Craven_Einherjar',522,250,1,255); -- Ice Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Craven_Einherjar',522,258,1,255); -- Bind (1~255)

-- Dark Elemental (Einherjar) (523)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,232,1,255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,260,1,255); -- Dispel (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,266,1,255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,267,1,255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,268,1,255); -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,269,1,255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,270,1,255); -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,271,1,255); -- Absorb-MND (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,272,1,255); -- Absorb-CHR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,273,1,255); -- Sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Dark_Elemental_einherjar',523,274,1,255); -- Sleepga II (1~255)

-- Einherjar Eater (524)
INSERT INTO `mob_spell_lists` VALUES ('Einherjar_Eater',524,54,1,255);  -- Stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Einherjar_Eater',524,162,1,255); -- Stone IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Einherjar_Eater',524,191,1,255); -- Stonega III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Einherjar_Eater',524,210,1,255); -- Quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Einherjar_Eater',524,238,1,255); -- Rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Einherjar_Eater',524,258,1,255); -- Bind (1~255)

-- Rotting Huskarl (BLM) (525)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,157,1,255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,172,1,255); -- Water IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,181,1,255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,196,1,255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,212,1,255); -- Burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,214,1,255); -- Flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,216,1,255); -- Gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,232,1,255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,238,1,255); -- Rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,250,1,255); -- Ice Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,253,1,255); -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,259,1,255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,273,1,255); -- Sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_blm',525,274,1,255); -- Sleepga II (1~255)

-- Rotting Huskarl (DRK) (526)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,150,1,255); -- Blizzard II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,161,1,255); -- Stone III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,165,1,255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,171,1,255); -- Water III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,221,1,255); -- Poison II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,266,1,255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,267,1,255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,269,1,255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,270,1,255); -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Rotting_Huskarl_drk',526,275,1,255); -- Absorb-TP (1~255)

-- Odin's Jester, Odin's Fool (527)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,151,1,255); -- Blizzard III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,156,1,255); -- Aero III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,166,1,255); -- Thunder III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,171,1,255); -- Water III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,175,1,255); -- Firaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,195,1,255); -- Thundaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,249,1,255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,253,1,255); -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,259,1,255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Odins_Jester',527,273,1,255); -- Sleepga (1~255)

-- Waldgeist (528)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,147,1,255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,152,1,255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,157,1,255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,172,1,255); -- Water IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,173,1,255); -- Water V (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,176,1,255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,186,1,255); -- Aeroga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,196,1,255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,204,1,255); -- Flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,249,1,255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,253,1,255); -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Waldgeist',528,259,1,255); -- Sleep II (1~255)

-- Logi (529)
INSERT INTO `mob_spell_lists` VALUES ('Logi',529,100,1,255); -- Enfire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Logi',529,147,1,255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Logi',529,176,1,255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Logi',529,204,1,255); -- Flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Logi',529,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Logi',529,249,1,255); -- Blaze Spikes (1~255)

-- Liquified Einherjar (530)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,147,1,255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,176,1,255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,191,1,255); -- Stonega III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,204,1,255); -- Flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,210,1,255); -- Quake (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,212,1,255); -- Burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,238,1,255); -- Rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,239,1,255); -- Shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,249,1,255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,273,1,255); -- Sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Liquified_Einherjar',530,274,1,255); -- Sleepga II (1~255)

-- Margygr (531)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,147,1,255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,152,1,255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,157,1,255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,172,1,255); -- Water IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,176,1,255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,196,1,255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,204,1,255); -- Flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,249,1,255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,253,1,255); -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,259,1,255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,273,1,255); -- Sleepga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Margygr',531,274,1,255); -- Sleepga II (1~255)

-- Soulflayer (Einherjar) (532)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,152,1,255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,157,1,255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,172,1,255); -- Water IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,181,1,255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,196,1,255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,212,1,255); -- Burst (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,214,1,255); -- Flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,216,1,255); -- Gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,232,1,255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,238,1,255); -- Rasp (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,250,1,255); -- Ice Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,259,1,255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Soulflayer_einherjar',532,274,1,255); -- Sleepga II (1~255)

-- Berserkr (BLM) (533)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 147, 1, 255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 157, 1, 255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 167, 1, 255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 196, 1, 255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 204, 1, 255); -- Flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 220, 1, 255); -- Poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 231, 1, 255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 235, 1, 255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 236, 1, 255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 237, 1, 255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 240, 1, 255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 245, 1, 255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 247, 1, 255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 249, 1, 255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_blm', 533, 273, 1, 255); -- Sleepga (1~255)

-- Berserkr (DRK) (534)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 145, 1, 255); -- Fire II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 150, 1, 255); -- Blizzard II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 155, 1, 255); -- Aero II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 161, 1, 255); -- Stone III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 165, 1, 255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 220, 1, 255); -- Poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 245, 1, 255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 247, 1, 255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 266, 1, 255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 267, 1, 255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 268, 1, 255); -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 269, 1, 255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 270, 1, 255); -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 271, 1, 255); -- Absorb-MND (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 272, 1, 255); -- Absorb-CHR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Berserkr_drk', 534, 275, 1, 255); -- Absorb-TP (1~255)

-- Vanquished Einherjar (DRK) (535)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 155, 1, 255); -- Aero II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 165, 1, 255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 221, 1, 255); -- Poison II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 245, 1, 255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 247, 1, 255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 259, 1, 255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 266, 1, 255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 267, 1, 255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 268, 1, 255); -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 269, 1, 255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 270, 1, 255); -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_drk', 535, 275, 1, 255); -- Absorb-TP (1~255)

-- Vanquished Einherjar (BLM) (536)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 152, 1, 255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 157, 1, 255); -- Aero IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 196, 1, 255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 214, 1, 255); -- Flood (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 232, 1, 255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 236, 1, 255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 237, 1, 255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 245, 1, 255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 247, 1, 255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 250, 1, 255); -- Ice Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 254, 1, 255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 258, 1, 255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vanquished_Einherjar_blm', 536, 273, 1, 255); -- Sleepga (1~255)

-- Andhrimnir (537)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 176, 1, 255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 181, 1, 255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 186, 1, 255); -- Aeroga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 191, 1, 255); -- Stonega III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 196, 1, 255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 201, 1, 255); -- Waterga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 226, 1, 255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 232, 1, 255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 237, 1, 255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 240, 1, 255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 249, 1, 255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 250, 1, 255); -- Ice Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 251, 1, 255); -- Shock Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 258, 1, 255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Andhrimnir', 537, 274, 1, 255); -- Sleepga II (1~255)

-- Balrahn (538)
INSERT INTO `mob_spell_lists` VALUES ('Balrahn', 538, 176, 1, 255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Balrahn', 538, 181, 1, 255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Balrahn', 538, 196, 1, 255); -- Thundaga III (1~255)

-- Mokkuralfi (539)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 175, 1, 255); -- Firaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 176, 1, 255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 180, 1, 255); -- Blizzaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 181, 1, 255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 185, 1, 255); -- Aeroga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 190, 1, 255); -- Stonega II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 195, 1, 255); -- Thundaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 196, 1, 255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 200, 1, 255); -- Waterga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 226, 1, 255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 232, 1, 255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 235, 1, 255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 237, 1, 255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 239, 1, 255); -- Shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 245, 1, 255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 249, 1, 255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 250, 1, 255); -- Ice Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 251, 1, 255); -- Shock Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Mokkuralfi', 539, 274, 1, 255); -- Sleepga II (1~255)

-- Ariri Samariri (540)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 176, 1, 255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 181, 1, 255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 196, 1, 255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 226, 1, 255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 232, 1, 255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 245, 1, 255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 251, 1, 255); -- Shock Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 274, 1, 255); -- Sleepga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ariri_Samariri', 540, 366, 1, 255); -- Graviga (1~255)

-- Motsognir (541)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 147, 1, 255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 152, 1, 255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 167, 1, 255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 176, 1, 255); -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 181, 1, 255); -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 196, 1, 255); -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 226, 1, 255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 232, 1, 255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 235, 1, 255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 237, 1, 255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 239, 1, 255); -- Shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 254, 1, 255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 258, 1, 255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Motsognir', 541, 274, 1, 255); -- Sleepga II (1~255)

-- Vampyr_Jarl (542)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 226, 1, 255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 232, 1, 255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 246, 1, 255); -- Drain II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 252, 1, 255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 266, 1, 255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 267, 1, 255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 268, 1, 255); -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 269, 1, 255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 274, 1, 255); -- Sleepga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 275, 1, 255); -- Absorb-TP (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 277, 1, 255); -- Dread Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Vampyr_Jarl', 542, 362, 1, 255); -- Bindga (1~255)

-- Ulagohvsdi Tlugvi (KS30 Season's Greetings) (543)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,321,1,255);  -- Katon: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,324,1,255);  -- Hyoton: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,327,1,255);  -- Huton: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,330,1,255);  -- Doton: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,333,1,255);  -- Raiton: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,336,1,255);  -- Suiton: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,339,1,255);  -- Utsusemi: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,342,1,255);  -- Jubaku: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,345,1,255);  -- Hojo: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,348,1,255);  -- Kurayami: Ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ulagohvsdi_Tlugvi',543,351,1,255);  -- Dokumori: Ni (1~255)

-- Gola Tlugvi (KS30 Season's Greetings) (544)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,145,1,255);  -- Fire II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,150,1,255);  -- Blizzard II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,155,1,255);  -- Aero II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,160,1,255);  -- Stone II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,161,1,255);  -- Stone III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,165,1,255);  -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,170,1,255);  -- Water II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,220,1,255);  -- Poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,231,1,255);  -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,245,1,255);  -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,247,1,255);  -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,252,1,255);  -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,266,1,255);  -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,267,1,255);  -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,268,1,255);  -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,269,1,255);  -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,270,1,255);  -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,271,1,255);  -- Absorb-MND (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,272,1,255);  -- Absorb-CHR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gola_Tlugvi',544,275,1,255);  -- Absorb-TP (1~255)

-- Gilagoge Tlugvi (KS30 Season's Greetings) (545)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,5,1,255);    -- Cure V (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,15,1,255);   -- Paralyna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,16,1,255);   -- Blindna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,21,1,255);   -- Holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,24,1,255);   -- Dia II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,30,1,255);   -- Banish III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,34,1,255);   -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,40,1,255);   -- Banishga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,46,1,255);   -- Protect IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,51,1,255);   -- Shell IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,53,1,255);   -- Blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,54,1,255);   -- Stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,55,1,255);   -- Aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,56,1,255);   -- Slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,57,1,255);   -- Haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,58,1,255);   -- Paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,59,1,255);   -- Silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Gilagoge_Tlugvi',545,112,1,255);  -- Flash (1~255)

-- Alexander_WTC (546)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,22,1,255);  -- Holy II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,25,1,255);  -- Dia III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,31,1,255);  -- Banish IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,35,1,255);  -- Diaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,40,1,255);  -- Banishga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,46,1,255);  -- Protect IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,51,1,255);  -- Shell IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,128,1,255); -- Protectra IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_WTC',546,133,1,255); -- Shellra IV (1~255)

-- Alexander Image (547)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_Image',547,21,1,255);  -- Holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_Image',547,30,1,255);  -- Banish III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_Image',547,34,1,255);  -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_Image',547,40,1,255);  -- Banishga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Alexander_Image',547,112,1,255); -- Flash (1~255)

-- Ouryu (Ouryu from Ouryu Cometh) (548)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_Ouryu_Cometh',548,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_Ouryu_Cometh',548,191,1,255); -- stonega_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_Ouryu_Cometh',548,365,1,255); -- breakga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ouryu_Ouryu_Cometh',548,255,1,255); -- break (1~255)

-- T3 Elemental Ga Spells - Mammet-800 (549)
INSERT INTO `mob_spell_lists` VALUES ('T3_Ga_Spells',549,176,1,255);  -- Firaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('T3_Ga_Spells',549,181,1,255);  -- Blizzaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('T3_Ga_Spells',549,186,1,255);  -- Aeroga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('T3_Ga_Spells',549,191,1,255);  -- Stonega III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('T3_Ga_Spells',549,196,1,255);  -- Thundaga III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('T3_Ga_Spells',549,201,1,255);  -- Waterga III (1~255)

-- Giollemitte B Feroun (550)
INSERT INTO `mob_spell_lists` VALUES ('Giollemitte_B_Feroun',550,112,37,255);  -- Flash (1~255)

-- Marquis Andrealphus (DRK) (551)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,144,1,255); -- Fire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,164,1,255); -- Thunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,149,1,255); -- Blizzard (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,154,1,255); -- Aero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,160,1,255); -- Stone II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,170,1,255); -- Water II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,220,1,255); -- Poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,266,1,255); -- Absorb-STR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,267,1,255); -- Absorb-DEX (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,268,1,255); -- Absorb-VIT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,269,1,255); -- Absorb-AGI (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,270,1,255); -- Absorb-INT (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,271,1,255); -- Absorb-MND (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,272,1,255); -- Absorb-CHR (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Marquis_Andrealphus',551,275,1,255); -- Absorb-TP (1~255)

-- Demon Secretary (BLM) (552)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,145,1,255); -- Fire II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,150,1,255); -- Blizzard II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,165,1,255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,170,1,255); -- Water II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,174,1,255); -- Firaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,185,1,255); -- Aeroga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,190,1,255); -- Stonega II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,194,1,255); -- Thundaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,221,1,255); -- Poison II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,231,1,255); -- Bio II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,249,1,255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,253,1,255); -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,259,1,255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Demon_Secretary',552,273,1,255); -- Sleepga (1~255)

-- Xarcabard NM Ereshkigal
INSERT INTO `mob_spell_lists` VALUES ('Ereshkigal',553,150,1,255); -- blizzard_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ereshkigal',553,179,1,255); -- blizzaga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ereshkigal',553,206,1,255); -- freeze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ereshkigal',553,231,1,255); -- bio_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ereshkigal',553,250,1,255); -- ice_spikes (1~255)

-- Beloved of the Atlantes
INSERT INTO `mob_spell_lists` VALUES ('Beloved_of_the_Atlantes',554,372,1,255); -- Foe Requiem V (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beloved_of_the_Atlantes',554,381,1,255); -- Army's Paeon IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beloved_of_the_Atlantes',554,419,1,255); -- Advancing March (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beloved_of_the_Atlantes',554,422,1,255); -- Carnage Elegy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Beloved_of_the_Atlantes',554,463,1,255); -- Foe Lullaby (1~255)

-- Bloody Coffin (RDM) (555)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,34,45,255); -- Diaga_II (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,56,1,255);  -- Slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,57,1,255);  -- Haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,105,1,255); -- Enwater (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,108,1,255); -- Regen (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Bloody_Coffin',555,254,1,255); -- Blind (1~255)

-- Ace of Batons (BLM) Windurst Mission 9-2 (556)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Batons',556,40,1,255);  -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Batons',556,162,1,255); -- Stone IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Batons',556,204,1,255); -- Flare (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Batons',556,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Batons',556,252,1,255); -- Stun (1~255)

-- Ace of Coins (RDM) Windurst Mission 9-2 (557)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,34,1,255);  -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,53,1,255);  -- Blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,145,1,255); -- Fire II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,150,1,255); -- Blizzard II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,161,1,255); -- Stone III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,170,1,255); -- Water II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Coins',557,231,1,255); -- Bio II (1~255)

-- Ace of Cups (WHM) Windurst Mission 9-2 (558)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,5,1,255);  -- Cure V (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,15,1,255); -- Paralyna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,16,1,255); -- Blindna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,17,1,255); -- Silena (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,21,1,255); -- Holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,24,1,255); -- Dia II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,34,1,255); -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,53,1,255); -- Blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Cups',558,54,1,255); -- Stoneskin (1~255)

-- Ace of Cups (PLD) Windurst Mission 9-2 (559)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Swords',559,4,1,255);   -- Cure IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Swords',559,29,1,255);  -- Banish II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Ace_of_Swords',559,112,1,255); -- Flash (1~255)

-- Pandemonium Warden/Lamp (BLM)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,147,1,255); -- Fire IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,152,1,255); -- Blizzard IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,167,1,255); -- Thunder IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,226,1,255); -- Poisonga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,232,1,255); -- Bio III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,239,1,255); -- Shock (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,250,1,255); -- ice_spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumX_BLM',560,274,1,255); -- Sleepga II (1~255)

-- Pandemonium Lamp (RDM)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,4,1,255);   -- cure_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,25,1,255);  -- dia_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,56,1,255);  -- slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,110,1,255); -- regen_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,146,1,255); -- fire_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,151,1,255); -- blizzard_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,156,1,255); -- aero_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,161,1,255); -- stone_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,166,1,255); -- thunder_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,171,1,255); -- water_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,216,1,255); -- gravity (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,221,1,255); -- poison_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,232,1,255); -- bio_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,253,1,255); -- sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,254,1,255); -- blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,258,1,255); -- bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,259,1,255); -- sleep_ii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_RDM',561,260,1,255); -- dispel (1~255)

-- Pandemonium Lamp (WHM)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,5,1,255);   -- cure_v (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,14,1,255);  -- poisona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,15,1,255);  -- paralyna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,16,1,255);  -- blindna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,17,1,255);  -- silena (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,18,1,255);  -- stona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,19,1,255);  -- viruna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,20,1,255);  -- cursna (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,21,1,255);  -- holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,25,1,255);  -- dia_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,31,1,255);  -- banish_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,46,1,255);  -- protect_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,51,1,255);  -- shell_iv (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,53,1,255);  -- blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,54,1,255);  -- stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,55,1,255);  -- aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,56,1,255);  -- slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,57,1,255);  -- haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,58,1,255);  -- paralyze (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,59,1,255);  -- silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,111,1,255); -- regen_iii (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,112,1,255); -- flash (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_WHM',562,143,1,255); -- erase (1~255)

-- Pandemonium Lamp (NIN)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,322,1,255); -- katon_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,325,1,255); -- hyoton_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,328,1,255); -- huton_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,331,1,255); -- doton_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,334,1,255); -- raiton_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,337,1,255); -- suiton_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,340,1,255); -- utsusemi_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,342,1,255); -- jubaku_ni (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,346,1,255); -- hojo_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,349,1,255); -- kurayami_san (1~255)
INSERT INTO `mob_spell_lists` VALUES ('PandemoniumLamp_NIN',563,352,1,255); -- dokumori_san (1~255)

-- Book Browser Bokabraq (BLM) Go! Go! Gobmuffin! (564)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,145,1,255); -- Fire II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,161,1,255); -- Stone III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,165,1,255); -- Thunder II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,170,1,255); -- Water II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,185,1,255); -- Aeroga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,190,1,255); -- Stonega II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,208,1,255); -- Tornado (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,221,1,255); -- Poison II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,235,1,255); -- Burn (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,236,1,255); -- Frost (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,237,1,255); -- Choke (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,240,1,255); -- Drown (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,245,1,255); -- Drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,247,1,255); -- Aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,249,1,255); -- Blaze Spikes (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,252,1,255); -- Stun (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,253,1,255); -- Sleep (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,254,1,255); -- Blind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,258,1,255); -- Bind (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,259,1,255); -- Sleep II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Book_Browser_Bokabraq',564,273,1,255); -- Sleepga (1~255)

-- Chemical Cook Chemachiq (WHM) Go! Go! Gobmuffin! (565)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,4,1,255);   -- Cure IV (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,14,1,255);  -- Poisona (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,17,1,255);  -- Silena (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,21,1,255);  -- Holy (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,24,1,255);  -- Dia II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,29,1,255);  -- Banish II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,34,1,255);  -- Diaga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,39,1,255);  -- Banishga II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,45,1,255);  -- Protect III (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,49,1,255);  -- Shell II (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,53,1,255);  -- Blink (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,54,1,255);  -- Stoneskin (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,55,1,255);  -- Aquaveil (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,56,1,255);  -- Slow (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,57,1,255);  -- Haste (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,59,1,255);  -- Silence (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Chemical_Cook_Chemachiq',565,112,1,255); -- Flash (1~255)

-- Next Available: 566

/*!40000 ALTER TABLE `mob_spell_lists` ENABLE KEYS */;

-- ============================================================================
-- AUTO-GENERATED SPELL LISTS FOR JOBS AND JOB COMBINATIONS
-- Generated by generate_sql_spell_lists.py
-- These lists provide complete spell catalogs for each job and job combo
-- ============================================================================

-- Single Job Spell Lists
-- =====================

-- BLM (566)

-- BLU (567)

-- BRD (568)

-- BST (569)

-- DRK (570)

-- GEO (571)

-- NIN (572)

-- PLD (573)

-- RDM (574)

-- RUN (575)

-- SCH (576)

-- SMN (577)

-- WHM (578)


-- Job Combination Spell Lists (Main Job + Sub Job)
-- ================================================

-- BLM_BLU (579)

-- BLM_BRD (580)

-- BLM_BST (581)

-- BLM_DRK (582)

-- BLM_GEO (583)

-- BLM_NIN (584)

-- BLM_PLD (585)

-- BLM_RDM (586)

-- BLM_RUN (587)

-- BLM_SCH (588)

-- BLM_SMN (589)

-- BLU_BST (590)

-- BLU_DRK (591)

-- BLU_GEO (592)

-- BLU_NIN (593)

-- BLU_PLD (594)

-- BLU_RUN (595)

-- BLU_SCH (596)

-- BRD_BLU (597)

-- BRD_BST (598)

-- BRD_DRK (599)

-- BRD_GEO (600)

-- BRD_NIN (601)

-- BRD_PLD (602)

-- BRD_RUN (603)

-- BRD_SCH (604)

-- BRD_SMN (605)

-- DRK_BST (606)

-- DRK_PLD (607)

-- DRK_SCH (608)

-- GEO_BST (609)

-- GEO_DRK (610)

-- GEO_PLD (611)

-- GEO_SCH (612)

-- NIN_BST (613)

-- NIN_DRK (614)

-- NIN_GEO (615)

-- NIN_PLD (616)

-- NIN_RUN (617)

-- NIN_SCH (618)

-- PLD_BST (619)

-- PLD_SCH (620)

-- RDM_BLU (621)

-- RDM_BRD (622)

-- RDM_BST (623)

-- RDM_DRK (624)

-- RDM_GEO (625)

-- RDM_NIN (626)

-- RDM_PLD (627)

-- RDM_RUN (628)

-- RDM_SCH (629)

-- RDM_SMN (630)

-- RUN_BST (631)

-- RUN_DRK (632)

-- RUN_GEO (633)

-- RUN_PLD (634)

-- RUN_SCH (635)

-- SCH_BST (636)

-- SMN_BLU (637)

-- SMN_BST (638)

-- SMN_DRK (639)

-- SMN_GEO (640)

-- SMN_NIN (641)

-- SMN_PLD (642)

-- SMN_RUN (643)

-- SMN_SCH (644)

-- WHM_BLM (645)

-- WHM_BLU (646)

-- WHM_BRD (647)

-- WHM_BST (648)

-- WHM_DRK (649)

-- WHM_GEO (650)

-- WHM_NIN (651)

-- WHM_PLD (652)

-- WHM_RDM (653)

-- WHM_RUN (654)

-- WHM_SCH (655)

-- WHM_SMN (656)

-- Total new spell lists added: 91
-- IDs used: 566 to 656
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- ============================================================================
-- AUTO-GENERATED SPELL LISTS FOR JOBS AND JOB COMBINATIONS
-- Generated by generate_sql_spell_lists.py with proper level ranges
-- Level ranges derived from Beastmen spell lists in mob_spell_lists.sql
-- ============================================================================

-- Single Job Spell Lists
-- =====================

-- BLM (566)

-- BLU (567)

-- BRD (568)

-- BST (569)

-- DRK (570)

-- GEO (571)

-- NIN (572)

-- PLD (573)

-- RDM (574)

-- RUN (575)

-- SCH (576)

-- SMN (577)

-- WHM (578)


-- Job Combination Spell Lists (Main Job + Sub Job)
-- ================================================

-- BLM_BLU (579)

-- BLM_BRD (580)

-- BLM_BST (581)

-- BLM_DRK (582)

-- BLM_GEO (583)

-- BLM_NIN (584)

-- BLM_PLD (585)

-- BLM_RDM (586)

-- BLM_RUN (587)

-- BLM_SCH (588)

-- BLM_SMN (589)

-- BLU_BST (590)

-- BLU_DRK (591)

-- BLU_GEO (592)

-- BLU_NIN (593)

-- BLU_PLD (594)

-- BLU_RUN (595)

-- BLU_SCH (596)

-- BRD_BLU (597)

-- BRD_BST (598)

-- BRD_DRK (599)

-- BRD_GEO (600)

-- BRD_NIN (601)

-- BRD_PLD (602)

-- BRD_RUN (603)

-- BRD_SCH (604)

-- BRD_SMN (605)

-- DRK_BST (606)

-- DRK_PLD (607)

-- DRK_SCH (608)

-- GEO_BST (609)

-- GEO_DRK (610)

-- GEO_PLD (611)

-- GEO_SCH (612)

-- NIN_BST (613)

-- NIN_DRK (614)

-- NIN_GEO (615)

-- NIN_PLD (616)

-- NIN_RUN (617)

-- NIN_SCH (618)

-- PLD_BST (619)

-- PLD_SCH (620)

-- RDM_BLU (621)

-- RDM_BRD (622)

-- RDM_BST (623)

-- RDM_DRK (624)

-- RDM_GEO (625)

-- RDM_NIN (626)

-- RDM_PLD (627)

-- RDM_RUN (628)

-- RDM_SCH (629)

-- RDM_SMN (630)

-- RUN_BST (631)

-- RUN_DRK (632)

-- RUN_GEO (633)

-- RUN_PLD (634)

-- RUN_SCH (635)

-- SCH_BST (636)

-- SMN_BLU (637)

-- SMN_BST (638)

-- SMN_DRK (639)

-- SMN_GEO (640)

-- SMN_NIN (641)

-- SMN_PLD (642)

-- SMN_RUN (643)

-- SMN_SCH (644)

-- WHM_BLM (645)

-- WHM_BLU (646)

-- WHM_BRD (647)

-- WHM_BST (648)

-- WHM_DRK (649)

-- WHM_GEO (650)

-- WHM_NIN (651)

-- WHM_PLD (652)

-- WHM_RDM (653)

-- WHM_RUN (654)

-- WHM_SCH (655)

-- WHM_SMN (656)

-- Total new spell lists added: 91
-- IDs used: 566 to 656
-- Spells with level data: 2964
-- Spells without level data (using defaults): 14937

-- ============================================================================
-- AUTO-GENERATED SPELL LISTS FOR JOBS AND JOB COMBINATIONS
-- Generated by generate_sql_spell_lists.py with proper level ranges
-- Level ranges derived from Beastmen spell lists in mob_spell_lists.sql
-- ============================================================================

-- Single Job Spell Lists
-- =====================

-- BLM (566)
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM',566,899,1,99);

-- BLU (567)
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU',567,899,1,99);

-- BRD (568)
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD',568,899,1,99);

-- BST (569)
INSERT INTO `mob_spell_lists` VALUES ('BST',569,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BST',569,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BST',569,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BST',569,899,1,99);

-- DRK (570)
INSERT INTO `mob_spell_lists` VALUES ('DRK',570,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK',570,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK',570,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK',570,899,1,99);

-- GEO (571)
INSERT INTO `mob_spell_lists` VALUES ('GEO',571,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO',571,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO',571,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO',571,899,1,99);

-- NIN (572)
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN',572,899,1,99);

-- PLD (573)
INSERT INTO `mob_spell_lists` VALUES ('PLD',573,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD',573,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD',573,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD',573,899,1,99);

-- RDM (574)
INSERT INTO `mob_spell_lists` VALUES ('RDM',574,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM',574,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM',574,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM',574,899,1,99);

-- RUN (575)
INSERT INTO `mob_spell_lists` VALUES ('RUN',575,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN',575,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN',575,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN',575,899,1,99);

-- SCH (576)
INSERT INTO `mob_spell_lists` VALUES ('SCH',576,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SCH',576,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SCH',576,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SCH',576,899,1,99);

-- SMN (577)
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN',577,899,1,99);

-- WHM (578)
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM',578,899,1,99);


-- Job Combination Spell Lists (Main Job + Sub Job)
-- ================================================

-- BLM_BLU (579)
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BLU',579,899,1,99);

-- BLM_BRD (580)
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BRD',580,899,1,99);

-- BLM_BST (581)
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_BST',581,899,1,99);

-- BLM_DRK (582)
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_DRK',582,899,1,99);

-- BLM_GEO (583)
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_GEO',583,899,1,99);

-- BLM_NIN (584)
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_NIN',584,899,1,99);

-- BLM_PLD (585)
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_PLD',585,899,1,99);

-- BLM_RDM (586)
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RDM',586,899,1,99);

-- BLM_RUN (587)
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_RUN',587,899,1,99);

-- BLM_SCH (588)
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SCH',588,899,1,99);

-- BLM_SMN (589)
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLM_SMN',589,899,1,99);

-- BLU_BST (590)
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_BST',590,899,1,99);

-- BLU_DRK (591)
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_DRK',591,899,1,99);

-- BLU_GEO (592)
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_GEO',592,899,1,99);

-- BLU_NIN (593)
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_NIN',593,899,1,99);

-- BLU_PLD (594)
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_PLD',594,899,1,99);

-- BLU_RUN (595)
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_RUN',595,899,1,99);

-- BLU_SCH (596)
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BLU_SCH',596,899,1,99);

-- BRD_BLU (597)
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BLU',597,899,1,99);

-- BRD_BST (598)
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_BST',598,899,1,99);

-- BRD_DRK (599)
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_DRK',599,899,1,99);

-- BRD_GEO (600)
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_GEO',600,899,1,99);

-- BRD_NIN (601)
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_NIN',601,899,1,99);

-- BRD_PLD (602)
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_PLD',602,899,1,99);

-- BRD_RUN (603)
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_RUN',603,899,1,99);

-- BRD_SCH (604)
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SCH',604,899,1,99);

-- BRD_SMN (605)
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('BRD_SMN',605,899,1,99);

-- DRK_BST (606)
INSERT INTO `mob_spell_lists` VALUES ('DRK_BST',606,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_BST',606,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_BST',606,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_BST',606,899,1,99);

-- DRK_PLD (607)
INSERT INTO `mob_spell_lists` VALUES ('DRK_PLD',607,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_PLD',607,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_PLD',607,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_PLD',607,899,1,99);

-- DRK_SCH (608)
INSERT INTO `mob_spell_lists` VALUES ('DRK_SCH',608,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_SCH',608,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_SCH',608,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('DRK_SCH',608,899,1,99);

-- GEO_BST (609)
INSERT INTO `mob_spell_lists` VALUES ('GEO_BST',609,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_BST',609,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_BST',609,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_BST',609,899,1,99);

-- GEO_DRK (610)
INSERT INTO `mob_spell_lists` VALUES ('GEO_DRK',610,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_DRK',610,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_DRK',610,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_DRK',610,899,1,99);

-- GEO_PLD (611)
INSERT INTO `mob_spell_lists` VALUES ('GEO_PLD',611,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_PLD',611,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_PLD',611,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_PLD',611,899,1,99);

-- GEO_SCH (612)
INSERT INTO `mob_spell_lists` VALUES ('GEO_SCH',612,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_SCH',612,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_SCH',612,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('GEO_SCH',612,899,1,99);

-- NIN_BST (613)
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_BST',613,899,1,99);

-- NIN_DRK (614)
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_DRK',614,899,1,99);

-- NIN_GEO (615)
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_GEO',615,899,1,99);

-- NIN_PLD (616)
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_PLD',616,899,1,99);

-- NIN_RUN (617)
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_RUN',617,899,1,99);

-- NIN_SCH (618)
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('NIN_SCH',618,899,1,99);

-- PLD_BST (619)
INSERT INTO `mob_spell_lists` VALUES ('PLD_BST',619,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD_BST',619,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD_BST',619,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD_BST',619,899,1,99);

-- PLD_SCH (620)
INSERT INTO `mob_spell_lists` VALUES ('PLD_SCH',620,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD_SCH',620,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD_SCH',620,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('PLD_SCH',620,899,1,99);

-- RDM_BLU (621)
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BLU',621,899,1,99);

-- RDM_BRD (622)
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BRD',622,899,1,99);

-- RDM_BST (623)
INSERT INTO `mob_spell_lists` VALUES ('RDM_BST',623,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BST',623,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BST',623,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_BST',623,899,1,99);

-- RDM_DRK (624)
INSERT INTO `mob_spell_lists` VALUES ('RDM_DRK',624,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_DRK',624,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_DRK',624,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_DRK',624,899,1,99);

-- RDM_GEO (625)
INSERT INTO `mob_spell_lists` VALUES ('RDM_GEO',625,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_GEO',625,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_GEO',625,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_GEO',625,899,1,99);

-- RDM_NIN (626)
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_NIN',626,899,1,99);

-- RDM_PLD (627)
INSERT INTO `mob_spell_lists` VALUES ('RDM_PLD',627,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_PLD',627,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_PLD',627,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_PLD',627,899,1,99);

-- RDM_RUN (628)
INSERT INTO `mob_spell_lists` VALUES ('RDM_RUN',628,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_RUN',628,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_RUN',628,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_RUN',628,899,1,99);

-- RDM_SCH (629)
INSERT INTO `mob_spell_lists` VALUES ('RDM_SCH',629,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SCH',629,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SCH',629,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SCH',629,899,1,99);

-- RDM_SMN (630)
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RDM_SMN',630,899,1,99);

-- RUN_BST (631)
INSERT INTO `mob_spell_lists` VALUES ('RUN_BST',631,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_BST',631,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_BST',631,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_BST',631,899,1,99);

-- RUN_DRK (632)
INSERT INTO `mob_spell_lists` VALUES ('RUN_DRK',632,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_DRK',632,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_DRK',632,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_DRK',632,899,1,99);

-- RUN_GEO (633)
INSERT INTO `mob_spell_lists` VALUES ('RUN_GEO',633,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_GEO',633,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_GEO',633,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_GEO',633,899,1,99);

-- RUN_PLD (634)
INSERT INTO `mob_spell_lists` VALUES ('RUN_PLD',634,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_PLD',634,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_PLD',634,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_PLD',634,899,1,99);

-- RUN_SCH (635)
INSERT INTO `mob_spell_lists` VALUES ('RUN_SCH',635,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_SCH',635,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_SCH',635,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('RUN_SCH',635,899,1,99);

-- SCH_BST (636)
INSERT INTO `mob_spell_lists` VALUES ('SCH_BST',636,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SCH_BST',636,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SCH_BST',636,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SCH_BST',636,899,1,99);

-- SMN_BLU (637)
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BLU',637,899,1,99);

-- SMN_BST (638)
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_BST',638,899,1,99);

-- SMN_DRK (639)
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_DRK',639,899,1,99);

-- SMN_GEO (640)
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_GEO',640,899,1,99);

-- SMN_NIN (641)
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_NIN',641,899,1,99);

-- SMN_PLD (642)
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_PLD',642,899,1,99);

-- SMN_RUN (643)
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_RUN',643,899,1,99);

-- SMN_SCH (644)
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('SMN_SCH',644,899,1,99);

-- WHM_BLM (645)
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,144,13,22);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,145,38,47);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,146,62,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,147,73,85);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,148,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,149,17,27);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,150,42,53);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,151,64,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,152,74,88);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,153,89,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,154,9,18);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,155,34,44);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,156,59,66);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,157,72,82);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,158,83,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,159,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,160,26,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,161,51,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,162,68,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,163,77,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,164,21,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,165,46,55);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,166,66,70);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,167,75,92);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,168,92,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,169,5,12);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,170,30,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,171,55,61);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,172,70,78);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,173,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,174,28,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,175,53,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,176,69,90);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,177,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,178,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,179,32,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,180,57,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,181,71,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,182,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,183,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,184,23,31);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,185,48,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,186,67,71);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,187,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,188,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,189,15,22);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,190,40,47);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,191,63,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,192,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,193,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,194,36,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,195,61,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,196,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,197,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,198,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,199,19,27);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,200,44,52);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,201,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,202,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,203,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,204,60,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,205,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,206,50,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,207,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,208,52,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,209,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,210,54,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,211,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,212,56,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,213,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,214,58,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,215,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,216,21,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,217,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,218,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,219,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,220,3,17);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,221,43,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,222,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,225,24,71);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,226,72,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,227,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,230,10,34);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,231,35,59);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,232,60,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,233,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,234,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,235,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,236,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,237,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,238,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,239,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,240,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,241,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,245,12,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,246,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,247,25,82);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,248,83,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,249,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,250,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,251,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,252,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,253,20,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,254,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,255,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,256,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,257,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,258,7,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,259,41,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,260,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,261,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,262,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,263,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,264,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,273,31,55);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,274,56,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,276,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,277,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,278,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,279,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,280,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,281,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,282,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,283,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,284,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,285,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,287,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,311,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,360,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,361,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,362,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,365,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,366,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,367,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,496,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,497,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,498,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,499,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,500,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,501,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,502,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,503,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,828,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,829,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,830,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,831,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,832,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,833,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,834,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,835,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,836,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,837,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,838,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,839,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,841,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,842,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,843,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,844,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,849,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,850,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,851,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,852,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,853,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,854,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,865,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,866,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,867,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,868,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,869,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,870,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,880,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,881,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,882,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,883,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,885,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,886,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,887,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,888,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,889,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,890,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,891,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,892,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLM',645,899,1,99);

-- WHM_BLU (646)
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,513,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,515,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,517,8,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,519,26,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,521,42,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,522,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,524,1,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,527,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,529,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,530,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,531,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,532,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,534,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,535,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,536,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,537,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,538,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,539,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,540,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,541,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,542,36,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,543,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,544,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,545,48,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,547,8,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,548,52,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,549,1,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,551,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,554,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,555,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,557,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,560,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,561,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,563,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,564,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,565,54,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,567,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,569,38,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,570,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,572,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,573,64,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,574,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,575,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,576,64,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,577,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,578,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,579,64,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,581,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,582,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,584,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,585,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,587,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,588,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,589,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,591,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,592,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,593,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,594,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,596,36,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,597,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,598,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,599,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,603,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,604,61,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,605,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,606,46,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,608,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,610,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,611,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,612,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,613,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,614,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,615,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,616,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,617,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,618,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,620,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,621,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,622,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,623,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,626,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,628,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,629,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,631,63,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,632,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,633,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,634,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,637,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,638,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,640,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,641,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,642,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,643,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,644,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,645,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,646,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,647,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,648,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,650,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,651,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,652,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,653,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,655,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,658,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,660,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,661,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,662,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,664,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,679,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,692,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,702,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BLU',646,899,1,99);

-- WHM_BRD (647)
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,368,7,16);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,369,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,370,37,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,371,47,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,372,57,66);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,373,67,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,374,76,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,376,27,91);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,377,92,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,378,5,14);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,379,15,34);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,380,35,44);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,381,45,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,382,65,77);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,383,78,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,386,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,387,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,388,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,389,1,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,390,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,391,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,392,61,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,393,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,394,3,22);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,395,23,42);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,396,43,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,397,63,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,398,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,399,11,50);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,400,51,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,401,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,402,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,403,13,52);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,404,53,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,405,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,406,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,408,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,409,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,410,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,412,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,414,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,415,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,417,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,419,29,59);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,420,60,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,421,39,58);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,422,59,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,423,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,424,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,425,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,426,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,427,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,428,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,429,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,430,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,431,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,432,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,433,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,434,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,435,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,436,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,437,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,438,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,439,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,440,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,441,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,442,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,443,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,444,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,445,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,454,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,455,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,456,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,457,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,458,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,459,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,460,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,461,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,462,33,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,463,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,464,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,465,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,466,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,467,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,468,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,469,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,470,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,471,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,472,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,871,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,872,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,873,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,874,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,876,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,877,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,878,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BRD',647,899,1,99);

-- WHM_BST (648)
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_BST',648,899,1,99);

-- WHM_DRK (649)
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_DRK',649,899,1,99);

-- WHM_GEO (650)
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_GEO',650,899,1,99);

-- WHM_NIN (651)
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,318,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,319,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,320,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,321,40,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,322,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,323,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,324,40,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,325,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,326,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,327,40,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,328,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,329,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,330,40,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,331,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,332,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,333,40,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,334,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,335,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,336,40,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,337,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,338,12,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,339,37,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,340,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,341,30,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,342,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,343,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,344,23,47);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,345,48,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,346,76,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,347,19,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,348,44,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,349,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,350,27,55);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,351,56,74);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,352,76,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,353,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,354,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,505,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,506,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,507,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,508,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,509,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,510,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_NIN',651,899,1,99);

-- WHM_PLD (652)
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_PLD',652,899,1,99);

-- WHM_RDM (653)
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RDM',653,899,1,99);

-- WHM_RUN (654)
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_RUN',654,899,1,99);

-- WHM_SCH (655)
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SCH',655,899,1,99);

-- WHM_SMN (656)
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,1,1,10);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,2,11,20);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,3,21,40);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,4,41,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,5,61,79);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,6,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,7,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,8,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,9,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,10,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,11,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,12,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,13,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,14,6,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,15,9,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,16,14,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,17,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,18,39,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,19,34,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,20,29,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,21,50,94);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,22,95,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,23,3,35);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,24,36,64);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,25,65,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,26,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,27,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,28,5,29);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,29,30,60);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,30,61,72);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,31,73,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,33,18,54);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,34,60,73);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,35,74,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,36,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,37,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,38,15,39);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,39,40,68);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,40,69,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,41,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,43,7,26);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,44,27,46);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,45,47,62);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,46,63,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,47,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,48,17,36);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,49,37,56);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,50,57,67);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,51,68,75);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,52,80,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,53,19,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,54,28,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,55,10,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,56,13,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,57,40,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,58,4,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,59,15,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,60,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,61,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,62,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,63,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,64,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,65,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,66,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,67,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,68,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,69,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,70,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,71,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,72,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,73,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,74,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,75,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,76,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,77,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,78,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,79,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,80,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,84,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,85,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,86,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,87,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,88,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,89,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,90,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,91,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,92,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,93,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,94,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,95,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,96,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,97,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,98,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,99,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,100,24,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,101,22,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,102,20,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,103,18,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,104,16,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,105,27,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,106,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,107,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,108,21,43);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,109,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,110,44,65);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,111,66,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,112,45,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,113,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,114,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,115,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,116,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,117,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,118,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,119,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,125,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,126,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,127,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,128,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,129,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,130,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,131,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,132,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,133,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,134,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,135,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,136,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,137,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,138,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,140,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,141,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,142,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,143,32,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,286,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,288,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,289,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,290,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,291,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,292,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,293,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,294,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,295,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,296,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,297,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,298,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,299,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,300,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,301,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,302,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,303,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,304,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,305,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,306,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,307,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,310,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,312,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,313,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,314,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,315,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,316,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,317,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,355,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,356,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,357,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,358,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,359,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,473,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,474,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,475,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,476,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,477,86,255);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,478,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,493,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,494,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,504,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,511,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,840,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,845,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,846,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,848,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,879,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,894,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,895,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,896,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,897,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,898,1,99);
INSERT INTO `mob_spell_lists` VALUES ('WHM_SMN',656,899,1,99);

-- Total new spell lists added: 91
-- IDs used: 566 to 656
-- Spells with level data: 2964
-- Spells without level data (using defaults): 5382