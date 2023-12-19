INSERT INTO public.chains (id, name, net_version, genesis_block_hash, shard, namespace) 
VALUES 
(1, 'goerli', '5', 'bf7e331f7f7c1dd2e05159666b3bf8bc7a8a3a9eb1d518969eab529dd9b88c1a', 'primary', 'chain1'),
(2, 'mainnet', '1', 'd4e56740f876aef8c010b86a40d5f56745a118d0906a34e69aec8c0db1cb8fa3', 'primary', 'chain2'),
(3, 'rootstock', '30', 'f88529d4ab262c0f4d042e9d8d3f2472848eaafe1a9b7213f57617eb40a9f9e0', 'primary', 'chain3')
;

INSERT INTO public.deployment_schemas (id, subgraph, name, version, shard, network, active, created_at) 
VALUES 
(1, 'Qmb_1', 'sgd1', 1, 'primary', 'mainnet', true, '2023-10-11 08:42:16.971774+00')
(2, 'Qmb_2', 'sgd2', 1, 'primary', 'mainnet', true, '2023-10-12 08:42:16.971774+00')
;


INSERT INTO subgraphs.subgraph (id, name, current_version, pending_version, created_at, vid, block_range) 
VALUES
('1a0b1a6160e366e63cf4f695f5cb9d8f','ens-subgraph','4946a781afb9361744a65c96ada6b10d',NULL,1697132880,1,'[-1,)'),
('4f5c9696084b65c23a7658d7aae1d291','yet-another-ens-subgraph','e5270653b1e8bc5272405fd05983bd52',NULL,1702874471,2,'[-1,)')
;

INSERT INTO subgraphs.subgraph_version (id, subgraph, deployment, created_at, vid, block_range)
VALUES
('4946a781afb9361744a65c96ada6b10d','1a0b1a6160e366e63cf4f695f5cb9d8f','Qmb_1',1697134143,1,'[-1,)'),
('e5270653b1e8bc5272405fd05983bd52','4f5c9696084b65c23a7658d7aae1d291','Qmb_2',1702878223,2,'[-1,)')
;


INSERT INTO sgd1.domain (vid, block_range, id, name, label_name, labelhash, parent, subdomain_count, resolved_address, resolver, ttl, is_migrated, created_at, owner, registrant, wrapped_owner, expiry_date) 
VALUES 
(1, '[3772472,)', '0x1de584ac44cad146f5bdfaf699bda6bfb289663c312895e09c98c2b9e071d27d', '20minutos.eth', '20minutos', '\x4ab7be9bf534d7f950990a7c82b7a6e60b111167cd25fdfbeb3c91b1893692d5', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1495830131, '0x260393e86246520d5fb4cc80f3533cc1a04d28be', NULL, NULL, NULL),
(2, '[3736650,)', '0x4499ecadd6f88f697aea09d87440dd9e6f02a51b10a0f74cb2c34170c1ac6eff', '4shared.eth', '4shared', '\x06bf6ff2cd6e4da0fa409233610cbb1db806e3cd4eeef0b5c467a45692bdda30', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1495263091, '0xe906a0fb9aa56471208d11c144ddc8cf5eb9a80d', NULL, NULL, NULL),
(3, '[3869000,)', '0x7a68d23f9d7e32e79f09e024d21e2e12b66f74cbbc4aff0e5a36043a6a42778d', 'abcnews.eth', 'abcnews', '\xa1ccf0f079182991a5b110659bdd4c3b422c594c1329750bc86e9d4f8c93daad', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497403304, '0xe95ca676de726aee5ed7f6cd4537cde478cc5020', NULL, NULL, NULL),
(4, '[3709479,)', '0xa18f454079cff252304162c74fe3e04a6d6914d7c2739be581a5130c93a22f62', 'academia.eth', 'academia', '\x15dc749c52113e836d626eceda7c1d9570781b0e80d9e2ff0452d6fd5dd1446b', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1494829099, '0x173c1be256c026c8bfe16819527a97e5d1ec687b', NULL, NULL, NULL),
(5, '[3974435,)', '0xb5b210cef7626ac6f3c8a8f0c59c1051636b60be109aa15cb6e9fc3c9538b8ee', 'addthis.eth', 'addthis', '\x94128173d888310d7330371389686da0f15f963d8ec9a849d4b1246308d78a55', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1499197177, '0x8c944e46b99c300b71e0df22383f1c7b9ee0a6c5', NULL, NULL, NULL),
(6, '[3988619,)', '0xb52a8482dcbc4d1f17652256696d3774a934821707c78f795efacd1426be4766', 'addtoany.eth', 'addtoany', '\x6a3caef25cce6c882d5e939a9c24bfa208a80dff1e3a18a87d2718f57edf8025', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, '0x5ffc014343cd971b7eb70732021e26c35b744cc4-0xb52a8482dcbc4d1f17652256696d3774a934821707c78f795efacd1426be4766', NULL, false, 1498670555, '0x26e1d2868f4df867f4916f59e734ad1bc714b6b8', NULL, NULL, NULL),
(7, '[3979625,)', '0x8fd413a9fb690e2ad87ee60a1a55652aa751e91985e166c37ec9f7461c0a0dca', 'afternic.eth', 'afternic', '\xcb394f50bfc0cd8a29806bf9fb0d6de53abcae406c6b532b8fe643cdea4f17fd', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1499286330, '0xc58de7054d911aecdb5258564084c82e888df789', NULL, NULL, NULL),
(8, '[3847165,)', '0x03e5ee5ba07e85cd8c8deaeaba21cc3c078f10f978210e6241dd0cce67ea678c', 'alibaba.eth', 'alibaba', '\x8cbcaee325410444be62c6ad4cf947bfec366f42b1b0b9c97f2f9251a97d9d47', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497044919, '0x752975f5990c33da38c4cd50f0a41b70b3a6796c', NULL, NULL, NULL),
(9, '[3723638,)', '0x8842adef2544e10cab97930817d747a77131e33077f41d2637adbaf3641e2214', 'aliexpress.eth', 'aliexpress', '\x24bd3e7939752621cf32d1ba3b8bf456cfe5c235d05fb0705fb28ca504e9659d', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1495056351, '0xea23ac45b17ff55d45f841aee07c006a62085d7d', NULL, NULL, NULL),
(10, '[3716667,)', '0xd45469c01fa520b5449836db347e705da5f78da5169e8394424c6c5c21bc006e', 'android.eth', 'android', '\x1e6f29bd8c18e740e09595edc6696e24318dce38861e6ce5d1fc190eddaff912', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1494944371, '0x0006f6534c675d8e24aaf841be845ef19d7d5c35', NULL, NULL, NULL),
(11, '[3846593,)', '0x74503de338bc5f19484a66ec51a433fa767dc92125f6143f3641b53645734c7c', 'archive.eth', 'archive', '\x8ed7a9335536cdb908765f4e7487066bee528f5c98e23e50fb88ca80b1624efb', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497035658, '0xf32866d5ce9a9b5673e076be48abcd6ed48ade78', NULL, NULL, NULL),
(12, '[3900159,)', '0x79d980d7a330ea036cbb18c642b74c4a4164f7a07c36b3573e10d2edeec659a8', 'bandcamp.eth', 'bandcamp', '\xb7127ad8057b8dc08fc1784c552460345a44604ac8982a960aab3a22e4e65973', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497908645, '0x1365941efa2e05571186cc451c1e0a6f0fe5bde6', NULL, NULL, NULL),
(13, '[3785491,)', '0xf4998e3f0fbfa666ed7c4f6d4bfc40ed06fbdba006ca5c2205a60957dcdc5d03', 'berkeley.eth', 'berkeley', '\x5a4b1b7291b2cb48b192c058eb6e1c349705ea5d708abbcce56eafac101c1cc9', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1496035583, '0x7d428a5455c16f3ee2986ca9d41cbae5d4132371', NULL, NULL, NULL),
(14, '[3990878,)', '0x6db3aa7fbaf005b22a12dd698aa41e3456ea93d2ab312796ee29fca980c99dcd', 'biglobe.eth', 'biglobe', '\x0475103e8c9fa59955293fdf1a45f5605ff5a98ad49d43650e7da17d1a378550', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1499479914, '0x916a3bc6f0306426adaaa101fe28fea7a5f69b06', NULL, NULL, NULL),
(15, '[3884773,)', '0x8ea9a8c5f37739d2e1fe95b3fc75e9bd56f9fbac1ee717a81d01afa80e70d400', 'billboard.eth', 'billboard', '\xaf1f5544eb296f84ce548bd3a511d7d6cb5c21c55a47d1ab8526aa6d8e087304', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497659962, '0xdc8d255e709edf2ed2622b2691e8ed9a71abb59e', NULL, NULL, NULL),
(16, '[3827942,)', '0x4b387a977a79e6e524ab572fb76c204fcc6615fe3f9ad6fcd9e225f9300f7bf2', 'blogger.eth', 'blogger', '\x7a9332fa0d910db7dd4d354d0e6667ab1ebcb9fdcc6a0025433332ec7fa15e2e', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1496727478, '0x1a69880bbe07491b8c7be111e9edd3a6a3a573a7', NULL, NULL, NULL),
(17, '[3875858,)', '0xf40f5ec405ab0b2f07eacfcdbd1ce2f5ab0d88357bec7120265cc7b89e62cd72', 'blogspot.eth', 'blogspot', '\xa4f28451a4110321a21ccd3a4fecf638bc3d74cd187b33bbcc48ce5af2101d65', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497515208, '0xf14955b6f701a4bfd422dcc324cf1f4b5a466265', NULL, NULL, NULL),
(18, '[3937005,)', '0x0d086030cbd65bc7815cf758e586439ad1ea9d0b6fee3b3d757fde1f9a514b49', 'bloomberg.eth', 'bloomberg', '\xdeb000fbbe0f3de1f86bcaf4f433c09bacbaa44bdc4b26bc13244743fd277804', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1498554162, '0x00f2aaa26fa8a6aada2afa7f545b141c8aca983f', NULL, NULL, NULL),
(19, '[3793505,)', '0x2f0af22f275fd8ad35453e8601964f8b9b492e52567a4ec93418381ae1e721f7', 'booking.eth', 'booking', '\x5c404fe0d68b7f2cbf78d2796785dfbc224cc281de624ac154aa97e8b83810e1', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1496160511, '0x2014e01eefe653901a7721fa908b0055f2eb84dc', NULL, NULL, NULL),
(20, '[3870845,)', '0x7e1d0d7c24e1d7f82fb85f66a0c47b7c9dcaa290803b81e0f7bb7a76dcdbaf3f', 'brandbucket.eth', 'brandbucket', '\x942dd1cc8e267c4992feb18791fbfa374b39cd9843c5a915f8c27a49c527ee39', '0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae', 0, NULL, NULL, NULL, false, 1497433469, '0x4c759813ad1386bed27ffae9e4815e3630cca312', NULL, NULL, NULL),
(21,'[13294741,)','0xeb4f647bea6caa36333c816d7b46fdcb05f9466ecacc140ea8c66faf15b3d9f1','test.eth','test','\x9C22FF5F21F0B81B113E63F7DB6DA94FEDEF11B2119B4088B89664FB9A3CB658','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae',0,'0xeefb13c7d42efcc655e528da6d6f7bbcf9a2251d','0x226159d592e2b063810a10ebf6dcbada94ed68b8-0xeb4f647bea6caa36333c816d7b46fdcb05f9466ecacc140ea8c66faf15b3d9f1',NULL,true,1571902007,'0xbd6bbe64bf841b81fc5a6e2b760029e316f2783b','0xbd6bbe64bf841b81fc5a6e2b760029e316f2783b',NULL,1737441815),
(22,'[10498481,13294741)','0xeb4f647bea6caa36333c816d7b46fdcb05f9466ecacc140ea8c66faf15b3d9f1','test.eth','test','\x9C22FF5F21F0B81B113E63F7DB6DA94FEDEF11B2119B4088B89664FB9A3CB658','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae',0,NULL,'0x226159d592e2b063810a10ebf6dcbada94ed68b8-0xeb4f647bea6caa36333c816d7b46fdcb05f9466ecacc140ea8c66faf15b3d9f1',NULL,true,1571902007,'0xbd6bbe64bf841b81fc5a6e2b760029e316f2783b','0xbd6bbe64bf841b81fc5a6e2b760029e316f2783b',NULL,1737441815),
(23,'[13695732,)','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','vitalik.eth','vitalik','\xAF2CAA1C2CA1D027F1AC823B529D0A67CD144264B2789FA2EA4D63A67C7103CC','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae',0,'0xd8da6bf26964af9d7eed9e03e53415d37aa96045','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',NULL,true,1497775154,'0xd8da6bf26964af9d7eed9e03e53415d37aa96045','0x220866b1a2219f40e72f5c628b65d54268ca3a9d',NULL,1975009824),
(24,'[13942919,)','0x68b620f61c87062cf680144f898582a631c90e39dd1badb35c241be0a7284fff','sashaxyz.eth','sashaxyz','\x5F5E95F7A849C60A514EB073C6FAFE97E835C0EE7B6DC15FC9D7DAA9E86F1A25','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae',0,'0xd8da6bf26964af9d7eed9e03e53415d37aa96045','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0x68b620f61c87062cf680144f898582a631c90e39dd1badb35c241be0a7284fff',NULL,true,1640341437,'0x66a6f7744ce4dea450910b81a7168588f992eafb','0x66a6f7744ce4dea450910b81a7168588f992eafb',NULL,1711231341),
(25,'[12439863,)','0x86f0774249ae1b7dcb5873ac0ada288d09ec4b3bf8bbf672b67726793797142e','expired.eth','expired','\x64CA1AE50619F7F4AB23F4C22C6B85B70CFC49C072D731BE4F91487F95764C93','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae',0,'0x9f7f7ddbfb8e14d1756580ba8037530da0880b99','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0x86f0774249ae1b7dcb5873ac0ada288d09ec4b3bf8bbf672b67726793797142e',NULL,true,1496998132,'0x9f7f7ddbfb8e14d1756580ba8037530da0880b99','0x9f7f7ddbfb8e14d1756580ba8037530da0880b99',NULL,1688547600),
(26,'[13601083,)','0x5d438d292de31e08576d5bcd8a93aa41b401b9d9aeaba57da1a32c003e5fd5f5','wa🇬🇲i.eth','wa🇬🇲i','\x66F484A3530B784F2347DE3459625585DA2B38B429596364B98186B1C5E30180','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae',0,'0x9c996076a85b46061d9a70ff81f013853a86b619','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0x5d438d292de31e08576d5bcd8a93aa41b401b9d9aeaba57da1a32c003e5fd5f5',NULL,true,1636717006,'0x9c996076a85b46061d9a70ff81f013853a86b619','0x9c996076a85b46061d9a70ff81f013853a86b619',NULL,1802277766)
;

-- vitalik.eth events
INSERT INTO sgd1.new_owner VALUES
(1,'[3891899,)','3891899-31','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',3891899,'\xDD16DEB1EA750037C3ED1CAE5CA20FF9DB0E664A5146E5A030137D277A9247F3','0xd8da6bf26964af9d7eed9e03e53415d37aa96045'),
(2,'[8121770,)','8121770-51','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',8121770,'\xEA30BDA97A7E9AFCCA208D5A648E8EC1E98B245A8884BF589DEC8F4AA332FB14','0xd8da6bf26964af9d7eed9e03e53415d37aa96045'),
(3,'[9430706,)','9430706-115','0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',9430706,'\xC3F86218C67BEE8256B74B9B65D746A40BB5318A8B57948B804DBBBC3D0D7864','0x6109dd117aa5486605fc85e040ab00163a75c662')
;

INSERT INTO sgd1.new_resolver VALUES
(1,'[11862657,)','11862657-114','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',11862657,'\xBB13EFAB7F1F798F63814A4D184E903E050B38C38AA407F9294079EE7B3110C9','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835'),
(2,'[9430706,)','9430706-117','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',9430706,'\xC3F86218C67BEE8256B74B9B65D746A40BB5318A8B57948B804DBBBC3D0D7864','0x226159d592e2b063810a10ebf6dcbada94ed68b8-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835')
;

INSERT INTO sgd1.resolver VALUES
(1,'[17043847,)','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','\x4976FB03C32E5B8CFE2B6CCB31C09BA78EBABA41','0xd8da6bf26964af9d7eed9e03e53415d37aa96045','\xE3010170122084B970556C2BCBD1F37D3B001C6C5566FC0EE7C7F1A76FDAEDB78AEFDCA0ED00','{url,avatar}','{60}'),
(2,'[17043847,)','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','\x4976FB03C32E5B8CFE2B6CCB31C09BA78EBABA41','0xd8da6bf26964af9d7eed9e03e53415d37aa96045','\xE3010170122084B970556C2BCBD1F37D3B001C6C5566FC0EE7C7F1A76FDAEDB78AEFDCA0ED00','{url,avatar}','{60}'),
(3,'[8834378,)','0x226159d592e2b063810a10ebf6dcbada94ed68b8-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835','\x226159D592E2B063810A10EBF6DCBADA94ED68B8','0xd8da6bf26964af9d7eed9e03e53415d37aa96045',NULL,NULL,'{60}')
;

INSERT INTO sgd1.addr_changed VALUES
(1,'[11862656,)','11862656-313','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',11862656,'\x160EF4492C731AC6B59BEEBE1E234890CD55D4C556F8847624A0B47125FE4F84','0xd8da6bf26964af9d7eed9e03e53415d37aa96045'),
(2,'[11862656,)','11862656-317','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',11862656,'\x160EF4492C731AC6B59BEEBE1E234890CD55D4C556F8847624A0B47125FE4F84','0xd8da6bf26964af9d7eed9e03e53415d37aa96045'),
(3,'[8834378,)','8834378-171','0x226159d592e2b063810a10ebf6dcbada94ed68b8-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',8834378,'\x09922AC0CAF1EFCC8F68CE004F382B46732258870154D8805707A1D4B098DFD0','0xd8da6bf26964af9d7eed9e03e53415d37aa96045')
;

INSERT INTO sgd1.multicoin_addr_changed VALUES
(7,'[2464711,)','2464711-2-0','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',2464711,'\x8075C91AA98595A0BD0C7F46D5636D069F6B9D32E8B153F4DC12E71686B9E0BF',60,'\xd8da6bf26964af9d7eed9e03e53415d37aa96045'),
(6,'[2464708,)','2464708-0-0','0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41-0xee6c4522aab0003e8d14cd40a6af439055fd2577951148c14b6cea9a53475835',2464708,'\x18811D8623AEF9A212D70A0C0C0A8B6C126E3715EF1B28759D3E5D570B34F589',137,'\xf0d485009714ce586358e3761754929904d76b9d')
;