-- VHDL netlist-file
library mach;
use mach.components.all;

library ieee;
use ieee.std_logic_1164.all;
entity lab11_4 is
  port (
    DIP0 : in std_logic;
    DIP1 : in std_logic;
    DIP2 : in std_logic;
    DIP3 : in std_logic;
    DIP4 : in std_logic;
    DIP5 : in std_logic;
    DIP6 : in std_logic;
    DIP7 : in std_logic;
    S1_NC : in std_logic;
    S1_NO : in std_logic;
    S2_NC : in std_logic;
    S2_NO : in std_logic;
    LED0 : out std_logic;
    LED1 : out std_logic;
    LED2 : out std_logic;
    LED3 : out std_logic;
    LED4 : out std_logic;
    LED5 : out std_logic;
    LED6 : out std_logic;
    LED7 : out std_logic;
    LED8 : out std_logic;
    LED9 : out std_logic;
    LED10 : out std_logic;
    LED11 : out std_logic;
    LED12 : out std_logic;
    LED13 : out std_logic;
    LED14 : out std_logic;
    LED15 : out std_logic;
    DIS1a : out std_logic;
    DIS1b : out std_logic;
    DIS1c : out std_logic;
    DIS1d : out std_logic;
    DIS1e : out std_logic;
    DIS1f : out std_logic;
    DIS1g : out std_logic;
    DIS2a : out std_logic;
    DIS2b : out std_logic;
    DIS2c : out std_logic;
    DIS2d : out std_logic;
    DIS2e : out std_logic;
    DIS2f : out std_logic;
    DIS2g : out std_logic;
    DIS3a : out std_logic;
    DIS3b : out std_logic;
    DIS3c : out std_logic;
    DIS3d : out std_logic;
    DIS3e : out std_logic;
    DIS3f : out std_logic;
    DIS3g : out std_logic;
    DIS4a : out std_logic;
    DIS4b : out std_logic;
    DIS4c : out std_logic;
    DIS4d : out std_logic;
    DIS4e : out std_logic;
    DIS4f : out std_logic;
    DIS4g : out std_logic;
    LED16 : out std_logic;
    LED17 : out std_logic;
    LED18 : out std_logic;
    LED19 : in std_logic;
    LED20 : in std_logic;
    LED21 : in std_logic;
    LED22 : in std_logic;
    LED23 : in std_logic;
    LED24 : in std_logic;
    LED25 : in std_logic;
    LED26 : in std_logic;
    LED27 : in std_logic;
    LED28 : in std_logic;
    LED29 : in std_logic
  );
end lab11_4;

architecture NetList of lab11_4 is

  signal DIP0PIN : std_logic;
  signal DIP1PIN : std_logic;
  signal DIP2PIN : std_logic;
  signal DIP3PIN : std_logic;
  signal DIP4PIN : std_logic;
  signal DIP5PIN : std_logic;
  signal DIP6PIN : std_logic;
  signal DIP7PIN : std_logic;
  signal S1_NCPIN : std_logic;
  signal S1_NOPIN : std_logic;
  signal S2_NCPIN : std_logic;
  signal S2_NOPIN : std_logic;
  signal LED0COM : std_logic;
  signal LED1COM : std_logic;
  signal LED2COM : std_logic;
  signal LED3COM : std_logic;
  signal LED4COM : std_logic;
  signal LED5COM : std_logic;
  signal LED6COM : std_logic;
  signal LED7COM : std_logic;
  signal LED8Q : std_logic;
  signal LED9Q : std_logic;
  signal LED10Q : std_logic;
  signal LED11Q : std_logic;
  signal LED12Q : std_logic;
  signal LED13Q : std_logic;
  signal LED14Q : std_logic;
  signal LED15Q : std_logic;
  signal DIS1aCOM : std_logic;
  signal DIS1bCOM : std_logic;
  signal DIS1cCOM : std_logic;
  signal DIS1dCOM : std_logic;
  signal DIS1eCOM : std_logic;
  signal DIS1fCOM : std_logic;
  signal DIS1gCOM : std_logic;
  signal DIS2aQ : std_logic;
  signal DIS2bQ : std_logic;
  signal DIS2cQ : std_logic;
  signal DIS2dQ : std_logic;
  signal DIS2eQ : std_logic;
  signal DIS2fQ : std_logic;
  signal DIS2gQ : std_logic;
  signal DIS3aQ : std_logic;
  signal DIS3bQ : std_logic;
  signal DIS3cQ : std_logic;
  signal DIS3dQ : std_logic;
  signal DIS3eQ : std_logic;
  signal DIS3fQ : std_logic;
  signal DIS3gQ : std_logic;
  signal DIS4aQ : std_logic;
  signal DIS4bQ : std_logic;
  signal DIS4cQ : std_logic;
  signal DIS4dQ : std_logic;
  signal DIS4eQ : std_logic;
  signal DIS4fQ : std_logic;
  signal DIS4gQ : std_logic;
  signal LED16Q : std_logic;
  signal LED17COM : std_logic;
  signal LED18COM : std_logic;
  signal LED19PIN : std_logic;
  signal LED20PIN : std_logic;
  signal LED21PIN : std_logic;
  signal LED22PIN : std_logic;
  signal LED23PIN : std_logic;
  signal LED24PIN : std_logic;
  signal LED25PIN : std_logic;
  signal LED26PIN : std_logic;
  signal LED27PIN : std_logic;
  signal LED28PIN : std_logic;
  signal LED29PIN : std_logic;
  signal osc_out : std_logic;
  signal tmr_out : std_logic;
  signal timdiv1Q : std_logic;
  signal timdiv2Q : std_logic;
  signal X0Q : std_logic;
  signal X1Q : std_logic;
  signal X2Q : std_logic;
  signal X3Q : std_logic;
  signal X4Q : std_logic;
  signal X5Q : std_logic;
  signal X6Q : std_logic;
  signal X7Q : std_logic;
  signal BFCQ : std_logic;
  signal Q0Q : std_logic;
  signal Q1Q : std_logic;
  signal Q2Q : std_logic;
  signal Q3Q : std_logic;
  signal RDIS2aQ : std_logic;
  signal RDIS2bQ : std_logic;
  signal RDIS2cQ : std_logic;
  signal RDIS2dQ : std_logic;
  signal RDIS2eQ : std_logic;
  signal RDIS2fQ : std_logic;
  signal RDIS2gQ : std_logic;
  signal RDIS3aQ : std_logic;
  signal RDIS3bQ : std_logic;
  signal RDIS3cQ : std_logic;
  signal RDIS3dQ : std_logic;
  signal RDIS3eQ : std_logic;
  signal RDIS3fQ : std_logic;
  signal RDIS3gQ : std_logic;
  signal P0Q : std_logic;
  signal P1Q : std_logic;
  signal P2Q : std_logic;
  signal P3Q : std_logic;
  signal T_0 : std_logic;
  signal T_1 : std_logic;
  signal T_2 : std_logic;
  signal T_3 : std_logic;
  signal T_4 : std_logic;
  signal T_5 : std_logic;
  signal T_6 : std_logic;
  signal T_7 : std_logic;
  signal T_8 : std_logic;
  signal LED9_D_X1 : std_logic;
  signal LED9_D_X2 : std_logic;
  signal LED10_D_X1 : std_logic;
  signal LED10_D_X2 : std_logic;
  signal LED11_D_X1 : std_logic;
  signal LED11_D_X2 : std_logic;
  signal LED12_D_X1 : std_logic;
  signal LED12_D_X2 : std_logic;
  signal LED13_D_X1 : std_logic;
  signal LED13_D_X2 : std_logic;
  signal LED14_D_X1 : std_logic;
  signal LED14_D_X2 : std_logic;
  signal LED15_D_X1 : std_logic;
  signal LED15_D_X2 : std_logic;
  signal T_9 : std_logic;
  signal T_10 : std_logic;
  signal T_11 : std_logic;
  signal T_12 : std_logic;
  signal T_13 : std_logic;
  signal T_14 : std_logic;
  signal T_15 : std_logic;
  signal T_16 : std_logic;
  signal DIS2e_D : std_logic;
  signal DIS2f_D : std_logic;
  signal DIS2g_D : std_logic;
  signal DIS3a_D : std_logic;
  signal DIS3b_D : std_logic;
  signal DIS3c_D : std_logic;
  signal DIS3d_D : std_logic;
  signal DIS3e_D : std_logic;
  signal DIS3f_D : std_logic;
  signal DIS3g_D : std_logic;
  signal DIS4a_D : std_logic;
  signal DIS4b_D : std_logic;
  signal DIS4c_D : std_logic;
  signal DIS4d_D : std_logic;
  signal DIS4e_D : std_logic;
  signal DIS4f_D : std_logic;
  signal DIS4g_D : std_logic;
  signal T_17 : std_logic;
  signal timdiv1_D : std_logic;
  signal timdiv2_D : std_logic;
  signal X0_D_X1 : std_logic;
  signal X0_D_X2 : std_logic;
  signal X1_D : std_logic;
  signal X2_D : std_logic;
  signal X3_D : std_logic;
  signal X4_D : std_logic;
  signal X5_D : std_logic;
  signal X6_D : std_logic;
  signal X7_D : std_logic;
  signal BFC_AR : std_logic;
  signal BFC_AP : std_logic;
  signal Q0_D_X1 : std_logic;
  signal Q0_D_X2 : std_logic;
  signal Q1_D : std_logic;
  signal Q2_D_X1 : std_logic;
  signal Q2_D_X2 : std_logic;
  signal Q3_D : std_logic;
  signal RDIS2a_D : std_logic;
  signal RDIS2b_D : std_logic;
  signal RDIS2c_D : std_logic;
  signal RDIS2d_D : std_logic;
  signal T_18 : std_logic;
  signal RDIS2f_D : std_logic;
  signal T_19 : std_logic;
  signal P0_D_X1 : std_logic;
  signal P0_D_X2 : std_logic;
  signal P1_D_X1 : std_logic;
  signal P1_D_X2 : std_logic;
  signal P2_D : std_logic;
  signal P3_D_X1 : std_logic;
  signal P3_D_X2 : std_logic;
  signal LED9_D : std_logic;
  signal LED10_D : std_logic;
  signal LED11_D : std_logic;
  signal LED12_D : std_logic;
  signal LED13_D : std_logic;
  signal LED14_D : std_logic;
  signal LED15_D : std_logic;
  signal X0_D : std_logic;
  signal Q0_D : std_logic;
  signal Q2_D : std_logic;
  signal P0_D : std_logic;
  signal P1_D : std_logic;
  signal P3_D : std_logic;
  signal LED8_D : std_logic;
  signal DIS2a_D : std_logic;
  signal DIS2b_D : std_logic;
  signal DIS2c_D : std_logic;
  signal DIS2d_D : std_logic;
  signal LED16_D : std_logic;
  signal RDIS2e_D : std_logic;
  signal RDIS2g_D : std_logic;
  signal T_20 : std_logic;
  signal T_21 : std_logic;
  signal T_22 : std_logic;
  signal T_23 : std_logic;
  signal T_24 : std_logic;
  signal T_25 : std_logic;
  signal T_26 : std_logic;
  signal T_27 : std_logic;
  signal T_28 : std_logic;
  signal T_29 : std_logic;
  signal T_30 : std_logic;
  signal T_31 : std_logic;
  signal T_32 : std_logic;
  signal T_33 : std_logic;
  signal T_34 : std_logic;
  signal T_35 : std_logic;
  signal T_36 : std_logic;
  signal T_37 : std_logic;
  signal T_38 : std_logic;
  signal T_39 : std_logic;
  signal T_40 : std_logic;
  signal T_41 : std_logic;
  signal T_42 : std_logic;
  signal T_43 : std_logic;
  signal T_44 : std_logic;
  signal T_45 : std_logic;
  signal T_46 : std_logic;
  signal T_47 : std_logic;
  signal T_48 : std_logic;
  signal T_49 : std_logic;
  signal T_50 : std_logic;
  signal T_51 : std_logic;
  signal T_52 : std_logic;
  signal T_53 : std_logic;
  signal T_54 : std_logic;
  signal T_55 : std_logic;
  signal T_56 : std_logic;
  signal T_57 : std_logic;
  signal T_58 : std_logic;
  signal T_59 : std_logic;
  signal T_60 : std_logic;
  signal T_61 : std_logic;
  signal T_62 : std_logic;
  signal T_63 : std_logic;
  signal T_64 : std_logic;
  signal T_65 : std_logic;
  signal T_66 : std_logic;
  signal T_67 : std_logic;
  signal T_68 : std_logic;
  signal T_69 : std_logic;
  signal T_70 : std_logic;
  signal T_71 : std_logic;
  signal T_72 : std_logic;
  signal T_73 : std_logic;
  signal T_74 : std_logic;
  signal T_75 : std_logic;
  signal T_76 : std_logic;
  signal T_77 : std_logic;
  signal T_78 : std_logic;
  signal T_79 : std_logic;
  signal T_80 : std_logic;
  signal T_81 : std_logic;
  signal T_82 : std_logic;
  signal T_83 : std_logic;
  signal T_84 : std_logic;
  signal T_85 : std_logic;
  signal T_86 : std_logic;
  signal T_87 : std_logic;
  signal T_88 : std_logic;
  signal T_89 : std_logic;
  signal T_90 : std_logic;
  signal T_91 : std_logic;
  signal T_92 : std_logic;
  signal T_93 : std_logic;
  signal T_94 : std_logic;
  signal T_95 : std_logic;
  signal T_96 : std_logic;
  signal T_97 : std_logic;
  signal T_98 : std_logic;
  signal T_99 : std_logic;
  signal T_100 : std_logic;
  signal T_101 : std_logic;
  signal T_102 : std_logic;
  signal T_103 : std_logic;
  signal T_104 : std_logic;
  signal T_105 : std_logic;
  signal T_106 : std_logic;
  signal T_107 : std_logic;
  signal T_108 : std_logic;
  signal T_109 : std_logic;
  signal T_110 : std_logic;
  signal T_111 : std_logic;
  signal T_112 : std_logic;
  signal T_113 : std_logic;
  signal T_114 : std_logic;
  signal T_115 : std_logic;
  signal T_116 : std_logic;
  signal T_117 : std_logic;
  signal T_118 : std_logic;
  signal T_119 : std_logic;
  signal T_120 : std_logic;
  signal T_121 : std_logic;
  signal T_122 : std_logic;
  signal T_123 : std_logic;
  signal T_124 : std_logic;
  signal T_125 : std_logic;
  signal T_126 : std_logic;
  signal T_127 : std_logic;
  signal T_128 : std_logic;
  signal T_129 : std_logic;
  signal T_130 : std_logic;
  signal T_131 : std_logic;
  signal T_132 : std_logic;
  signal T_133 : std_logic;
  signal T_134 : std_logic;
  signal T_135 : std_logic;
  signal T_136 : std_logic;
  signal T_137 : std_logic;
  signal T_138 : std_logic;
  signal T_139 : std_logic;
  signal T_140 : std_logic;
  signal T_141 : std_logic;
  signal T_142 : std_logic;
  signal T_143 : std_logic;
  signal T_144 : std_logic;
  signal T_145 : std_logic;
  signal T_146 : std_logic;
  signal T_147 : std_logic;
  signal T_148 : std_logic;
  signal T_149 : std_logic;
  signal T_150 : std_logic;
  signal T_151 : std_logic;
  signal T_152 : std_logic;
  signal T_153 : std_logic;
  signal T_154 : std_logic;
  signal T_155 : std_logic;
  signal T_156 : std_logic;
  signal T_157 : std_logic;
  signal T_158 : std_logic;
  signal T_159 : std_logic;
  signal T_160 : std_logic;
  signal T_161 : std_logic;
  signal T_162 : std_logic;
  signal T_163 : std_logic;
  signal T_164 : std_logic;
  signal T_165 : std_logic;
  signal T_166 : std_logic;
  signal T_167 : std_logic;
  signal T_168 : std_logic;
  signal T_169 : std_logic;
  signal T_170 : std_logic;
  signal T_171 : std_logic;
  signal T_172 : std_logic;
  signal T_173 : std_logic;
  signal T_174 : std_logic;
  signal T_175 : std_logic;
  signal T_176 : std_logic;
  signal T_177 : std_logic;
  signal T_178 : std_logic;
  signal T_179 : std_logic;
  signal T_180 : std_logic;
  signal T_181 : std_logic;
  signal T_182 : std_logic;
  signal T_183 : std_logic;
  signal T_184 : std_logic;
  signal T_185 : std_logic;
  signal T_186 : std_logic;
  signal T_187 : std_logic;
  signal T_188 : std_logic;
  signal T_189 : std_logic;
  signal T_190 : std_logic;
  signal T_191 : std_logic;
  signal T_192 : std_logic;
  signal T_193 : std_logic;
  signal T_194 : std_logic;
  signal T_195 : std_logic;
  signal T_196 : std_logic;
  signal T_197 : std_logic;
  signal T_198 : std_logic;
  signal T_199 : std_logic;
  signal T_200 : std_logic;
  signal T_201 : std_logic;
  signal T_202 : std_logic;
  signal T_203 : std_logic;
  signal T_204 : std_logic;
  signal T_205 : std_logic;
  signal T_206 : std_logic;
  signal T_207 : std_logic;
  signal T_208 : std_logic;
  signal T_209 : std_logic;
  signal T_210 : std_logic;
  signal T_211 : std_logic;
  signal T_212 : std_logic;
  signal T_213 : std_logic;
  signal T_214 : std_logic;
  signal T_215 : std_logic;
  signal T_216 : std_logic;
  signal T_217 : std_logic;
  signal T_218 : std_logic;
  signal T_219 : std_logic;
  signal T_220 : std_logic;
  signal T_221 : std_logic;
  signal T_222 : std_logic;
  signal T_223 : std_logic;
  signal T_224 : std_logic;
  signal T_225 : std_logic;
  signal T_226 : std_logic;
  signal T_227 : std_logic;
  signal T_228 : std_logic;
  signal T_229 : std_logic;
  signal T_230 : std_logic;
  signal T_231 : std_logic;
  signal T_232 : std_logic;
  signal T_233 : std_logic;
  signal T_234 : std_logic;
  signal T_235 : std_logic;
  signal T_236 : std_logic;
  signal T_237 : std_logic;
  signal T_238 : std_logic;
  signal T_239 : std_logic;
  signal T_240 : std_logic;
  signal T_241 : std_logic;
  signal T_242 : std_logic;
  signal T_243 : std_logic;
  signal T_244 : std_logic;
  signal T_245 : std_logic;
  signal T_246 : std_logic;
  signal T_247 : std_logic;
  signal T_248 : std_logic;
  signal T_249 : std_logic;
  signal T_250 : std_logic;
  signal T_251 : std_logic;
  signal T_252 : std_logic;
  signal T_253 : std_logic;
  signal T_254 : std_logic;
  signal T_255 : std_logic;
  signal T_256 : std_logic;
  signal T_257 : std_logic;
  signal T_258 : std_logic;
  signal T_259 : std_logic;
  signal T_260 : std_logic;
  signal T_261 : std_logic;
  signal T_262 : std_logic;
  signal T_263 : std_logic;
  signal T_264 : std_logic;
  signal T_265 : std_logic;
  signal T_266 : std_logic;
  signal T_267 : std_logic;
  signal T_268 : std_logic;
  signal T_269 : std_logic;
  signal T_270 : std_logic;
  signal T_271 : std_logic;
  signal T_272 : std_logic;
  signal T_273 : std_logic;
  signal T_274 : std_logic;
  signal T_275 : std_logic;
  signal T_276 : std_logic;
  signal T_277 : std_logic;
  signal T_278 : std_logic;
  signal T_279 : std_logic;
  signal T_280 : std_logic;
  signal T_281 : std_logic;
  signal T_282 : std_logic;
  signal T_283 : std_logic;
  signal T_284 : std_logic;
  signal T_285 : std_logic;
  signal T_286 : std_logic;
  signal T_287 : std_logic;
  signal T_288 : std_logic;
  signal T_289 : std_logic;
  signal T_290 : std_logic;
  signal T_291 : std_logic;
  signal T_292 : std_logic;
  signal T_293 : std_logic;
  signal T_294 : std_logic;
  signal T_295 : std_logic;
  signal T_296 : std_logic;
  signal T_297 : std_logic;
  signal T_298 : std_logic;
  signal T_299 : std_logic;
  signal T_300 : std_logic;
  signal T_301 : std_logic;
  signal T_302 : std_logic;
  signal T_303 : std_logic;
  signal T_304 : std_logic;
  signal T_305 : std_logic;
  signal T_306 : std_logic;
  signal T_307 : std_logic;
  signal T_308 : std_logic;
  signal T_309 : std_logic;
  signal T_310 : std_logic;
  signal T_311 : std_logic;
  signal T_312 : std_logic;
  signal T_313 : std_logic;
  signal T_314 : std_logic;
  signal T_315 : std_logic;
  signal T_316 : std_logic;
  signal T_317 : std_logic;
  signal T_318 : std_logic;
  signal T_319 : std_logic;
  signal T_320 : std_logic;
  signal T_321 : std_logic;
  signal T_322 : std_logic;
  signal T_323 : std_logic;
  signal T_324 : std_logic;
  signal T_325 : std_logic;
  signal T_326 : std_logic;
  signal T_327 : std_logic;
  signal T_328 : std_logic;
  signal T_329 : std_logic;
  signal T_330 : std_logic;
  signal T_331 : std_logic;
  signal T_332 : std_logic;
  signal T_333 : std_logic;
  signal T_334 : std_logic;
  signal T_335 : std_logic;
  signal T_336 : std_logic;
  signal T_337 : std_logic;
  signal T_338 : std_logic;
  signal T_339 : std_logic;
  signal T_340 : std_logic;
  signal T_341 : std_logic;
  signal T_342 : std_logic;
  signal T_343 : std_logic;
  signal T_344 : std_logic;
  signal T_345 : std_logic;
  signal T_346 : std_logic;
  signal T_347 : std_logic;
  signal T_348 : std_logic;
  signal T_349 : std_logic;
  signal T_350 : std_logic;
  signal T_351 : std_logic;
  signal T_352 : std_logic;
  signal T_353 : std_logic;
  signal T_354 : std_logic;
  signal T_355 : std_logic;
  signal T_356 : std_logic;
  signal T_357 : std_logic;
  signal T_358 : std_logic;
  signal T_359 : std_logic;
  signal T_360 : std_logic;
  signal T_361 : std_logic;
  signal T_362 : std_logic;
  signal T_363 : std_logic;
  signal T_364 : std_logic;
  signal T_365 : std_logic;
  signal T_366 : std_logic;
  signal T_367 : std_logic;
  signal T_368 : std_logic;
  signal T_369 : std_logic;
  signal T_370 : std_logic;
  signal T_371 : std_logic;
  signal T_372 : std_logic;
  signal T_373 : std_logic;
  signal T_374 : std_logic;
  signal T_375 : std_logic;
  signal T_376 : std_logic;
  signal T_377 : std_logic;
  signal T_378 : std_logic;
  signal T_379 : std_logic;
  signal T_380 : std_logic;
  signal T_381 : std_logic;
  signal T_382 : std_logic;
  signal T_383 : std_logic;
  signal T_384 : std_logic;
  signal T_385 : std_logic;
  signal T_386 : std_logic;
  signal T_387 : std_logic;
  signal T_388 : std_logic;
  signal T_389 : std_logic;
  signal T_390 : std_logic;
  signal T_391 : std_logic;
  signal T_392 : std_logic;
  signal T_393 : std_logic;
  signal T_394 : std_logic;
  signal T_395 : std_logic;
  signal T_396 : std_logic;
  signal T_397 : std_logic;
  signal T_398 : std_logic;
  signal T_399 : std_logic;
  signal T_400 : std_logic;
  signal T_401 : std_logic;
  signal T_402 : std_logic;
  signal T_403 : std_logic;
  signal T_404 : std_logic;
  signal T_405 : std_logic;
  signal T_406 : std_logic;
  signal T_407 : std_logic;
  signal T_408 : std_logic;
  signal T_409 : std_logic;
  signal T_410 : std_logic;
  signal T_411 : std_logic;
  signal T_412 : std_logic;
  signal T_413 : std_logic;
  signal T_414 : std_logic;
  signal T_415 : std_logic;
  signal T_416 : std_logic;
  signal T_417 : std_logic;
  signal T_418 : std_logic;
  signal T_419 : std_logic;
  signal T_420 : std_logic;
  signal T_421 : std_logic;
  signal T_422 : std_logic;
  signal T_423 : std_logic;
  signal T_424 : std_logic;
  signal T_425 : std_logic;
  signal T_426 : std_logic;
  signal T_427 : std_logic;
  signal T_428 : std_logic;
  signal T_429 : std_logic;
  signal T_430 : std_logic;
  signal T_431 : std_logic;
  signal T_432 : std_logic;
  signal T_433 : std_logic;
  signal T_434 : std_logic;
  signal T_435 : std_logic;
  signal T_436 : std_logic;
  signal GND_net : std_logic;
  signal GATE_LED17_A : std_logic;
  signal GATE_LED17_B : std_logic;
  signal GATE_LED18_A : std_logic;
  signal GATE_Q0_D_X2_A : std_logic;
  signal GATE_Q0_D_X2_B : std_logic;
  signal GATE_Q2_D_X2_A : std_logic;
  signal GATE_Q2_D_X2_B : std_logic;
  signal GATE_T_22_A : std_logic;
  signal GATE_T_26_B : std_logic;
  signal GATE_T_26_A : std_logic;
  signal GATE_T_27_A : std_logic;
  signal GATE_T_30_A : std_logic;
  signal GATE_T_31_A : std_logic;
  signal GATE_T_32_A : std_logic;
  signal GATE_T_34_B : std_logic;
  signal GATE_T_34_A : std_logic;
  signal GATE_T_35_B : std_logic;
  signal GATE_T_35_A : std_logic;
  signal GATE_T_36_DN : std_logic;
  signal GATE_T_37_A : std_logic;
  signal GATE_T_38_A : std_logic;
  signal GATE_T_42_A : std_logic;
  signal GATE_T_43_A : std_logic;
  signal GATE_T_44_A : std_logic;
  signal GATE_T_46_A : std_logic;
  signal GATE_T_47_A : std_logic;
  signal GATE_T_48_A : std_logic;
  signal GATE_T_49_A : std_logic;
  signal GATE_T_51_B : std_logic;
  signal GATE_T_51_A : std_logic;
  signal GATE_T_52_DN : std_logic;
  signal GATE_T_53_B : std_logic;
  signal GATE_T_53_A : std_logic;
  signal GATE_T_54_B : std_logic;
  signal GATE_T_54_A : std_logic;
  signal GATE_T_55_A : std_logic;
  signal GATE_T_57_A : std_logic;
  signal GATE_T_57_B : std_logic;
  signal GATE_T_58_A : std_logic;
  signal GATE_T_58_B : std_logic;
  signal GATE_T_59_A : std_logic;
  signal GATE_T_59_B : std_logic;
  signal GATE_T_61_A : std_logic;
  signal GATE_T_64_A : std_logic;
  signal GATE_T_67_A : std_logic;
  signal GATE_T_70_A : std_logic;
  signal GATE_T_73_A : std_logic;
  signal GATE_T_76_A : std_logic;
  signal GATE_T_79_A : std_logic;
  signal GATE_T_82_A : std_logic;
  signal GATE_T_85_A : std_logic;
  signal GATE_T_86_A : std_logic;
  signal GATE_T_90_B : std_logic;
  signal GATE_T_90_A : std_logic;
  signal GATE_T_91_B : std_logic;
  signal GATE_T_91_A : std_logic;
  signal GATE_T_92_DN : std_logic;
  signal GATE_T_93_B : std_logic;
  signal GATE_T_93_A : std_logic;
  signal GATE_T_95_A : std_logic;
  signal GATE_T_95_B : std_logic;
  signal GATE_T_96_A : std_logic;
  signal GATE_T_96_B : std_logic;
  signal GATE_T_97_A : std_logic;
  signal GATE_T_97_B : std_logic;
  signal GATE_T_98_A : std_logic;
  signal GATE_T_99_A : std_logic;
  signal GATE_T_100_A : std_logic;
  signal GATE_T_100_B : std_logic;
  signal GATE_T_101_A : std_logic;
  signal GATE_T_102_A : std_logic;
  signal GATE_T_103_DN : std_logic;
  signal GATE_T_104_DN : std_logic;
  signal GATE_T_105_A : std_logic;
  signal GATE_T_106_A : std_logic;
  signal GATE_T_107_DN : std_logic;
  signal GATE_T_108_DN : std_logic;
  signal GATE_T_109_A : std_logic;
  signal GATE_T_109_B : std_logic;
  signal GATE_T_110_A : std_logic;
  signal GATE_T_110_B : std_logic;
  signal GATE_T_111_A : std_logic;
  signal GATE_T_118_A : std_logic;
  signal GATE_T_119_A : std_logic;
  signal GATE_T_120_A : std_logic;
  signal GATE_T_121_A : std_logic;
  signal GATE_T_126_DN : std_logic;
  signal GATE_T_127_B : std_logic;
  signal GATE_T_127_A : std_logic;
  signal GATE_T_128_A : std_logic;
  signal GATE_T_137_A : std_logic;
  signal GATE_T_139_A : std_logic;
  signal GATE_T_141_A : std_logic;
  signal GATE_T_144_A : std_logic;
  signal GATE_T_146_A : std_logic;
  signal GATE_T_148_A : std_logic;
  signal GATE_T_149_A : std_logic;
  signal GATE_T_151_A : std_logic;
  signal GATE_T_151_B : std_logic;
  signal GATE_T_152_B : std_logic;
  signal GATE_T_152_A : std_logic;
  signal GATE_T_155_A : std_logic;
  signal GATE_T_158_A : std_logic;
  signal GATE_T_159_A : std_logic;
  signal GATE_T_159_B : std_logic;
  signal GATE_T_160_A : std_logic;
  signal GATE_T_161_A : std_logic;
  signal GATE_T_162_DN : std_logic;
  signal GATE_T_163_DN : std_logic;
  signal GATE_T_164_A : std_logic;
  signal GATE_T_165_A : std_logic;
  signal GATE_T_166_DN : std_logic;
  signal GATE_T_167_DN : std_logic;
  signal GATE_T_168_A : std_logic;
  signal GATE_T_168_B : std_logic;
  signal GATE_T_169_A : std_logic;
  signal GATE_T_169_B : std_logic;
  signal GATE_T_170_A : std_logic;
  signal GATE_T_171_B : std_logic;
  signal GATE_T_171_A : std_logic;
  signal GATE_T_174_A : std_logic;
  signal GATE_T_177_A : std_logic;
  signal GATE_T_178_A : std_logic;
  signal GATE_T_178_B : std_logic;
  signal GATE_T_179_A : std_logic;
  signal GATE_T_180_A : std_logic;
  signal GATE_T_181_DN : std_logic;
  signal GATE_T_182_DN : std_logic;
  signal GATE_T_183_A : std_logic;
  signal GATE_T_184_A : std_logic;
  signal GATE_T_185_DN : std_logic;
  signal GATE_T_186_DN : std_logic;
  signal GATE_T_187_A : std_logic;
  signal GATE_T_187_B : std_logic;
  signal GATE_T_188_A : std_logic;
  signal GATE_T_188_B : std_logic;
  signal GATE_T_189_A : std_logic;
  signal GATE_T_192_A : std_logic;
  signal GATE_T_192_B : std_logic;
  signal GATE_T_193_A : std_logic;
  signal GATE_T_194_A : std_logic;
  signal GATE_T_195_A : std_logic;
  signal GATE_T_196_A : std_logic;
  signal GATE_T_201_A : std_logic;
  signal GATE_T_204_A : std_logic;
  signal GATE_T_207_A : std_logic;
  signal GATE_T_208_A : std_logic;
  signal GATE_T_210_A : std_logic;
  signal GATE_T_211_A : std_logic;
  signal GATE_T_214_A : std_logic;
  signal GATE_T_215_A : std_logic;
  signal GATE_T_216_A : std_logic;
  signal GATE_T_217_A : std_logic;
  signal GATE_T_218_A : std_logic;
  signal GATE_T_219_A : std_logic;
  signal GATE_T_221_A : std_logic;
  signal GATE_T_222_A : std_logic;
  signal GATE_T_228_A : std_logic;
  signal GATE_T_230_A : std_logic;
  signal GATE_T_231_A : std_logic;
  signal GATE_T_232_A : std_logic;
  signal GATE_T_233_A : std_logic;
  signal GATE_T_235_A : std_logic;
  signal GATE_T_236_A : std_logic;
  signal GATE_T_238_A : std_logic;
  signal GATE_T_239_A : std_logic;
  signal GATE_T_242_A : std_logic;
  signal GATE_T_247_A : std_logic;
  signal GATE_T_249_A : std_logic;
  signal GATE_T_250_A : std_logic;
  signal GATE_T_251_A : std_logic;
  signal GATE_T_252_A : std_logic;
  signal GATE_T_254_A : std_logic;
  signal GATE_T_257_A : std_logic;
  signal GATE_T_260_A : std_logic;
  signal GATE_T_261_A : std_logic;
  signal GATE_T_263_A : std_logic;
  signal GATE_T_264_A : std_logic;
  signal GATE_T_265_A : std_logic;
  signal GATE_T_267_A : std_logic;
  signal GATE_T_271_A : std_logic;
  signal GATE_T_275_A : std_logic;
  signal GATE_T_278_A : std_logic;
  signal GATE_T_280_A : std_logic;
  signal GATE_T_282_A : std_logic;
  signal GATE_T_289_A : std_logic;
  signal GATE_T_290_A : std_logic;
  signal GATE_T_291_A : std_logic;
  signal GATE_T_292_A : std_logic;
  signal GATE_T_293_A : std_logic;
  signal GATE_T_294_A : std_logic;
  signal GATE_T_295_A : std_logic;
  signal GATE_T_296_A : std_logic;
  signal GATE_T_297_A : std_logic;
  signal GATE_T_298_A : std_logic;
  signal GATE_T_299_A : std_logic;
  signal GATE_T_300_A : std_logic;
  signal GATE_T_301_A : std_logic;
  signal GATE_T_302_A : std_logic;
  signal GATE_T_303_A : std_logic;
  signal GATE_T_304_A : std_logic;
  signal GATE_T_305_A : std_logic;
  signal GATE_T_306_A : std_logic;
  signal GATE_T_307_A : std_logic;
  signal GATE_T_308_A : std_logic;
  signal GATE_T_309_A : std_logic;
  signal GATE_T_310_A : std_logic;
  signal GATE_T_311_A : std_logic;
  signal GATE_T_312_A : std_logic;
  signal GATE_T_313_A : std_logic;
  signal GATE_T_314_A : std_logic;
  signal GATE_T_315_A : std_logic;
  signal GATE_T_316_A : std_logic;
  signal GATE_T_317_A : std_logic;
  signal GATE_T_318_A : std_logic;
  signal GATE_T_319_A : std_logic;
  signal GATE_T_320_A : std_logic;
  signal GATE_T_321_A : std_logic;
  signal GATE_T_322_A : std_logic;
  signal GATE_T_323_A : std_logic;
  signal GATE_T_324_A : std_logic;
  signal GATE_T_325_A : std_logic;
  signal GATE_T_326_A : std_logic;
  signal GATE_T_327_A : std_logic;
  signal GATE_T_328_A : std_logic;
  signal GATE_T_329_A : std_logic;
  signal GATE_T_330_A : std_logic;
  signal GATE_T_334_A : std_logic;
  signal GATE_T_336_A : std_logic;
  signal GATE_T_337_A : std_logic;
  signal GATE_T_338_A : std_logic;
  signal GATE_T_339_A : std_logic;
  signal GATE_T_341_A : std_logic;
  signal GATE_T_342_A : std_logic;
  signal GATE_T_344_A : std_logic;
  signal GATE_T_345_A : std_logic;
  signal GATE_T_347_A : std_logic;
  signal GATE_T_348_A : std_logic;
  signal GATE_T_349_A : std_logic;
  signal GATE_T_353_A : std_logic;
  signal GATE_T_365_A : std_logic;
  signal GATE_T_367_A : std_logic;
  signal GATE_T_369_A : std_logic;
  signal GATE_T_370_A : std_logic;
  signal GATE_T_371_A : std_logic;
  signal GATE_T_378_A : std_logic;
  signal GATE_T_380_A : std_logic;
  signal GATE_T_381_A : std_logic;
  signal GATE_T_382_A : std_logic;
  signal GATE_T_383_A : std_logic;
  signal GATE_T_384_A : std_logic;
  signal GATE_T_385_A : std_logic;
  signal GATE_T_386_A : std_logic;
  signal GATE_T_388_A : std_logic;
  signal GATE_T_390_A : std_logic;
  signal GATE_T_393_A : std_logic;
  signal GATE_T_403_A : std_logic;
  signal GATE_T_408_A : std_logic;
  signal GATE_T_411_A : std_logic;
  signal GATE_T_412_A : std_logic;
  signal GATE_T_414_A : std_logic;
  signal GATE_T_415_A : std_logic;
  signal GATE_T_416_A : std_logic;
  signal GATE_T_417_A : std_logic;
  signal GATE_T_419_A : std_logic;
  signal GATE_T_422_A : std_logic;
  signal GATE_T_424_A : std_logic;
  signal GATE_T_425_A : std_logic;
  signal GATE_T_426_A : std_logic;
  signal GATE_T_427_A : std_logic;
  signal GATE_T_433_A : std_logic;
  signal GATE_T_436_A : std_logic;
  signal GATE_T_436_B : std_logic;

begin
  I1:   OSCTIMER
 generic map( TIMER_DIV => "1048576", NORM_FREQ => "500", CO_DELAY => "1250")
 port map ( OSCOUT=>osc_out, 
            TIMEROUT=>tmr_out, 
            DYNOSCDIS=>GND_net, 
            TIMERRES=>GND_net );
  GND_I_I_1:   GND port map ( X=>GND_net );
  IN_DIP0_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP0PIN, 
            I0=>DIP0 );
  IN_DIP1_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP1PIN, 
            I0=>DIP1 );
  IN_DIP2_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP2PIN, 
            I0=>DIP2 );
  IN_DIP3_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP3PIN, 
            I0=>DIP3 );
  IN_DIP4_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP4PIN, 
            I0=>DIP4 );
  IN_DIP5_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP5PIN, 
            I0=>DIP5 );
  IN_DIP6_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP6PIN, 
            I0=>DIP6 );
  IN_DIP7_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>DIP7PIN, 
            I0=>DIP7 );
  IN_S1_NC_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>S1_NCPIN, 
            I0=>S1_NC );
  IN_S1_NO_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>S1_NOPIN, 
            I0=>S1_NO );
  IN_S2_NC_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>S2_NCPIN, 
            I0=>S2_NC );
  IN_S2_NO_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>S2_NOPIN, 
            I0=>S2_NO );
  OUT_LED0_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED0, 
            I0=>LED0COM );
  OUT_LED1_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED1, 
            I0=>LED1COM );
  OUT_LED2_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED2, 
            I0=>LED2COM );
  OUT_LED3_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED3, 
            I0=>LED3COM );
  OUT_LED4_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED4, 
            I0=>LED4COM );
  OUT_LED5_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED5, 
            I0=>LED5COM );
  OUT_LED6_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED6, 
            I0=>LED6COM );
  OUT_LED7_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED7, 
            I0=>LED7COM );
  OUT_LED8_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED8, 
            I0=>LED8Q );
  OUT_LED9_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED9, 
            I0=>LED9Q );
  OUT_LED10_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED10, 
            I0=>LED10Q );
  OUT_LED11_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED11, 
            I0=>LED11Q );
  OUT_LED12_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED12, 
            I0=>LED12Q );
  OUT_LED13_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED13, 
            I0=>LED13Q );
  OUT_LED14_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED14, 
            I0=>LED14Q );
  OUT_LED15_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED15, 
            I0=>LED15Q );
  OUT_DIS1a_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1a, 
            I0=>DIS1aCOM );
  OUT_DIS1b_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1b, 
            I0=>DIS1bCOM );
  OUT_DIS1c_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1c, 
            I0=>DIS1cCOM );
  OUT_DIS1d_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1d, 
            I0=>DIS1dCOM );
  OUT_DIS1e_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1e, 
            I0=>DIS1eCOM );
  OUT_DIS1f_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1f, 
            I0=>DIS1fCOM );
  OUT_DIS1g_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS1g, 
            I0=>DIS1gCOM );
  OUT_DIS2a_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2a, 
            I0=>DIS2aQ );
  OUT_DIS2b_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2b, 
            I0=>DIS2bQ );
  OUT_DIS2c_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2c, 
            I0=>DIS2cQ );
  OUT_DIS2d_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2d, 
            I0=>DIS2dQ );
  OUT_DIS2e_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2e, 
            I0=>DIS2eQ );
  OUT_DIS2f_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2f, 
            I0=>DIS2fQ );
  OUT_DIS2g_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS2g, 
            I0=>DIS2gQ );
  OUT_DIS3a_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3a, 
            I0=>DIS3aQ );
  OUT_DIS3b_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3b, 
            I0=>DIS3bQ );
  OUT_DIS3c_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3c, 
            I0=>DIS3cQ );
  OUT_DIS3d_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3d, 
            I0=>DIS3dQ );
  OUT_DIS3e_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3e, 
            I0=>DIS3eQ );
  OUT_DIS3f_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3f, 
            I0=>DIS3fQ );
  OUT_DIS3g_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS3g, 
            I0=>DIS3gQ );
  OUT_DIS4a_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4a, 
            I0=>DIS4aQ );
  OUT_DIS4b_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4b, 
            I0=>DIS4bQ );
  OUT_DIS4c_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4c, 
            I0=>DIS4cQ );
  OUT_DIS4d_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4d, 
            I0=>DIS4dQ );
  OUT_DIS4e_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4e, 
            I0=>DIS4eQ );
  OUT_DIS4f_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4f, 
            I0=>DIS4fQ );
  OUT_DIS4g_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>DIS4g, 
            I0=>DIS4gQ );
  OUT_LED16_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED16, 
            I0=>LED16Q );
  OUT_LED17_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED17, 
            I0=>LED17COM );
  OUT_LED18_I_1:   OBUF
 generic map( PULL => "Down")
 port map ( O=>LED18, 
            I0=>LED18COM );
  IN_LED19_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED19PIN, 
            I0=>LED19 );
  IN_LED20_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED20PIN, 
            I0=>LED20 );
  IN_LED21_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED21PIN, 
            I0=>LED21 );
  IN_LED22_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED22PIN, 
            I0=>LED22 );
  IN_LED23_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED23PIN, 
            I0=>LED23 );
  IN_LED24_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED24PIN, 
            I0=>LED24 );
  IN_LED25_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED25PIN, 
            I0=>LED25 );
  IN_LED26_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED26PIN, 
            I0=>LED26 );
  IN_LED27_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED27PIN, 
            I0=>LED27 );
  IN_LED28_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED28PIN, 
            I0=>LED28 );
  IN_LED29_I_1:   IBUF
 generic map( PULL => "Down")
 port map ( O=>LED29PIN, 
            I0=>LED29 );
  FF_LED8_I_1:   DFFRH port map ( Q=>LED8Q, 
            R=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED8_D );
  FF_LED9_I_1:   DFFSH port map ( Q=>LED9Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED9_D );
  FF_LED10_I_1:   DFFSH port map ( Q=>LED10Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED10_D );
  FF_LED11_I_1:   DFFSH port map ( Q=>LED11Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED11_D );
  FF_LED12_I_1:   DFFSH port map ( Q=>LED12Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED12_D );
  FF_LED13_I_1:   DFFSH port map ( Q=>LED13Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED13_D );
  FF_LED14_I_1:   DFFSH port map ( Q=>LED14Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED14_D );
  FF_LED15_I_1:   DFFSH port map ( Q=>LED15Q, 
            S=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>LED15_D );
  FF_DIS2a_I_1:   DFFSH port map ( Q=>DIS2aQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2a_D );
  FF_DIS2b_I_1:   DFFSH port map ( Q=>DIS2bQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2b_D );
  FF_DIS2c_I_1:   DFFSH port map ( Q=>DIS2cQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2c_D );
  FF_DIS2d_I_1:   DFFSH port map ( Q=>DIS2dQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2d_D );
  FF_DIS2e_I_1:   DFFSH port map ( Q=>DIS2eQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2e_D );
  FF_DIS2f_I_1:   DFFSH port map ( Q=>DIS2fQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2f_D );
  FF_DIS2g_I_1:   DFFSH port map ( Q=>DIS2gQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS2g_D );
  FF_DIS3a_I_1:   DFFSH port map ( Q=>DIS3aQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3a_D );
  FF_DIS3b_I_1:   DFFSH port map ( Q=>DIS3bQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3b_D );
  FF_DIS3c_I_1:   DFFSH port map ( Q=>DIS3cQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3c_D );
  FF_DIS3d_I_1:   DFFSH port map ( Q=>DIS3dQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3d_D );
  FF_DIS3e_I_1:   DFFSH port map ( Q=>DIS3eQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3e_D );
  FF_DIS3f_I_1:   DFFSH port map ( Q=>DIS3fQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3f_D );
  FF_DIS3g_I_1:   DFFSH port map ( Q=>DIS3gQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS3g_D );
  FF_DIS4a_I_1:   DFFSH port map ( Q=>DIS4aQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4a_D );
  FF_DIS4b_I_1:   DFFSH port map ( Q=>DIS4bQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4b_D );
  FF_DIS4c_I_1:   DFFSH port map ( Q=>DIS4cQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4c_D );
  FF_DIS4d_I_1:   DFFSH port map ( Q=>DIS4dQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4d_D );
  FF_DIS4e_I_1:   DFFSH port map ( Q=>DIS4eQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4e_D );
  FF_DIS4f_I_1:   DFFSH port map ( Q=>DIS4fQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4f_D );
  FF_DIS4g_I_1:   DFFSH port map ( Q=>DIS4gQ, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>DIS4g_D );
  FF_LED16_I_1:   DFF port map ( D=>LED16_D, 
            Q=>LED16Q, 
            CLK=>timdiv2Q );
  FF_timdiv1_I_1:   DFF port map ( D=>timdiv1_D, 
            Q=>timdiv1Q, 
            CLK=>tmr_out );
  FF_timdiv2_I_1:   DFF port map ( D=>timdiv2_D, 
            Q=>timdiv2Q, 
            CLK=>timdiv1Q );
  FF_X0_I_1:   DFFSH port map ( Q=>X0Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X0_D );
  FF_X1_I_1:   DFFSH port map ( Q=>X1Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X1_D );
  FF_X2_I_1:   DFFSH port map ( Q=>X2Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X2_D );
  FF_X3_I_1:   DFFSH port map ( Q=>X3Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X3_D );
  FF_X4_I_1:   DFFSH port map ( Q=>X4Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X4_D );
  FF_X5_I_1:   DFFSH port map ( Q=>X5Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X5_D );
  FF_X6_I_1:   DFFSH port map ( Q=>X6Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X6_D );
  FF_X7_I_1:   DFFSH port map ( Q=>X7Q, 
            S=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>X7_D );
  FF_BFC_I_1:   DFFRSH port map ( Q=>BFCQ, 
            R=>BFC_AR, 
            S=>BFC_AP, 
            CLK=>GND_net, 
            D=>GND_net );
  FF_Q0_I_1:   DFFRH port map ( Q=>Q0Q, 
            R=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>Q0_D );
  FF_Q1_I_1:   DFFRH port map ( Q=>Q1Q, 
            R=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>Q1_D );
  FF_Q2_I_1:   DFFRH port map ( Q=>Q2Q, 
            R=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>Q2_D );
  FF_Q3_I_1:   DFFRH port map ( Q=>Q3Q, 
            R=>DIP7PIN, 
            CLK=>BFCQ, 
            D=>Q3_D );
  FF_RDIS2a_I_1:   DFFRH port map ( Q=>RDIS2aQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2a_D );
  FF_RDIS2b_I_1:   DFFRH port map ( Q=>RDIS2bQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2b_D );
  FF_RDIS2c_I_1:   DFFRH port map ( Q=>RDIS2cQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2c_D );
  FF_RDIS2d_I_1:   DFFRH port map ( Q=>RDIS2dQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2d_D );
  FF_RDIS2e_I_1:   DFFRH port map ( Q=>RDIS2eQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2e_D );
  FF_RDIS2f_I_1:   DFFRH port map ( Q=>RDIS2fQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2f_D );
  FF_RDIS2g_I_1:   DFFRH port map ( Q=>RDIS2gQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2g_D );
  FF_RDIS3a_I_1:   DFFRH port map ( Q=>RDIS3aQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2aQ );
  FF_RDIS3b_I_1:   DFFRH port map ( Q=>RDIS3bQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2bQ );
  FF_RDIS3c_I_1:   DFFRH port map ( Q=>RDIS3cQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2cQ );
  FF_RDIS3d_I_1:   DFFRH port map ( Q=>RDIS3dQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2dQ );
  FF_RDIS3e_I_1:   DFFRH port map ( Q=>RDIS3eQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2eQ );
  FF_RDIS3f_I_1:   DFFRH port map ( Q=>RDIS3fQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2fQ );
  FF_RDIS3g_I_1:   DFFRH port map ( Q=>RDIS3gQ, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>RDIS2gQ );
  FF_P0_I_1:   DFFRH port map ( Q=>P0Q, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>P0_D );
  FF_P1_I_1:   DFFRH port map ( Q=>P1Q, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>P1_D );
  FF_P2_I_1:   DFFRH port map ( Q=>P2Q, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>P2_D );
  FF_P3_I_1:   DFFRH port map ( Q=>P3Q, 
            R=>DIP7PIN, 
            CLK=>timdiv2Q, 
            D=>P3_D );
  GATE_T_0_I_1:   AND2 port map ( O=>T_0, 
            I1=>DIP1PIN, 
            I0=>X0Q );
  GATE_T_1_I_1:   AND2 port map ( O=>T_1, 
            I1=>DIP1PIN, 
            I0=>X1Q );
  GATE_T_2_I_1:   AND2 port map ( O=>T_2, 
            I1=>DIP1PIN, 
            I0=>X2Q );
  GATE_T_3_I_1:   AND2 port map ( O=>T_3, 
            I1=>DIP1PIN, 
            I0=>X3Q );
  GATE_T_4_I_1:   AND2 port map ( O=>T_4, 
            I1=>DIP1PIN, 
            I0=>X4Q );
  GATE_T_5_I_1:   AND2 port map ( O=>T_5, 
            I1=>DIP1PIN, 
            I0=>X5Q );
  GATE_T_6_I_1:   AND2 port map ( O=>T_6, 
            I1=>DIP1PIN, 
            I0=>X6Q );
  GATE_T_7_I_1:   AND2 port map ( O=>T_7, 
            I1=>DIP1PIN, 
            I0=>X7Q );
  GATE_T_8_I_1:   OR3 port map ( O=>T_8, 
            I2=>T_429, 
            I1=>T_194, 
            I0=>T_428 );
  GATE_LED9_D_X1_I_1:   OR3 port map ( O=>LED9_D_X1, 
            I2=>T_81, 
            I1=>T_80, 
            I0=>T_82 );
  GATE_LED9_D_X2_I_1:   AND2 port map ( O=>LED9_D_X2, 
            I1=>LED9Q, 
            I0=>Q3Q );
  GATE_LED10_D_X1_I_1:   OR3 port map ( O=>LED10_D_X1, 
            I2=>T_78, 
            I1=>T_77, 
            I0=>T_79 );
  GATE_LED10_D_X2_I_1:   AND2 port map ( O=>LED10_D_X2, 
            I1=>LED10Q, 
            I0=>Q3Q );
  GATE_LED11_D_X1_I_1:   OR3 port map ( O=>LED11_D_X1, 
            I2=>T_75, 
            I1=>T_74, 
            I0=>T_76 );
  GATE_LED11_D_X2_I_1:   AND2 port map ( O=>LED11_D_X2, 
            I1=>LED11Q, 
            I0=>Q3Q );
  GATE_LED12_D_X1_I_1:   OR3 port map ( O=>LED12_D_X1, 
            I2=>T_72, 
            I1=>T_71, 
            I0=>T_73 );
  GATE_LED12_D_X2_I_1:   AND2 port map ( O=>LED12_D_X2, 
            I1=>LED12Q, 
            I0=>Q3Q );
  GATE_LED13_D_X1_I_1:   OR3 port map ( O=>LED13_D_X1, 
            I2=>T_69, 
            I1=>T_68, 
            I0=>T_70 );
  GATE_LED13_D_X2_I_1:   AND2 port map ( O=>LED13_D_X2, 
            I1=>LED13Q, 
            I0=>Q3Q );
  GATE_LED14_D_X1_I_1:   OR3 port map ( O=>LED14_D_X1, 
            I2=>T_66, 
            I1=>T_65, 
            I0=>T_67 );
  GATE_LED14_D_X2_I_1:   AND2 port map ( O=>LED14_D_X2, 
            I1=>LED14Q, 
            I0=>Q3Q );
  GATE_LED15_D_X1_I_1:   OR3 port map ( O=>LED15_D_X1, 
            I2=>T_63, 
            I1=>T_62, 
            I0=>T_64 );
  GATE_LED15_D_X2_I_1:   AND2 port map ( O=>LED15_D_X2, 
            I1=>LED15Q, 
            I0=>Q3Q );
  GATE_T_9_I_1:   OR3 port map ( O=>T_9, 
            I2=>T_188, 
            I1=>T_187, 
            I0=>T_189 );
  GATE_T_10_I_1:   OR2 port map ( O=>T_10, 
            I1=>T_186, 
            I0=>T_185 );
  GATE_T_11_I_1:   OR4 port map ( I0=>T_181, 
            I1=>T_182, 
            O=>T_11, 
            I2=>T_183, 
            I3=>T_184 );
  GATE_T_12_I_1:   OR4 port map ( I0=>T_177, 
            I1=>T_178, 
            O=>T_12, 
            I2=>T_179, 
            I3=>T_180 );
  GATE_DIS1e_I_1:   NOR3 port map ( O=>DIS1eCOM, 
            I2=>P2Q, 
            I1=>P3Q, 
            I0=>P1Q );
  GATE_DIS1f_I_1:   OR4 port map ( I0=>T_173, 
            I1=>T_174, 
            O=>DIS1fCOM, 
            I2=>T_175, 
            I3=>T_176 );
  GATE_DIS1g_I_1:   OR2 port map ( O=>DIS1gCOM, 
            I1=>T_172, 
            I0=>T_171 );
  GATE_T_13_I_1:   OR3 port map ( O=>T_13, 
            I2=>T_169, 
            I1=>T_168, 
            I0=>T_170 );
  GATE_T_14_I_1:   OR2 port map ( O=>T_14, 
            I1=>T_167, 
            I0=>T_166 );
  GATE_T_15_I_1:   OR4 port map ( I0=>T_162, 
            I1=>T_163, 
            O=>T_15, 
            I2=>T_164, 
            I3=>T_165 );
  GATE_T_16_I_1:   OR4 port map ( I0=>T_158, 
            I1=>T_159, 
            O=>T_16, 
            I2=>T_160, 
            I3=>T_161 );
  GATE_DIS2e_D_I_1:   NOR3 port map ( O=>DIS2e_D, 
            I2=>P2Q, 
            I1=>P3Q, 
            I0=>P1Q );
  GATE_DIS2f_D_I_1:   OR4 port map ( I0=>T_154, 
            I1=>T_155, 
            O=>DIS2f_D, 
            I2=>T_156, 
            I3=>T_157 );
  GATE_DIS2g_D_I_1:   OR2 port map ( O=>DIS2g_D, 
            I1=>T_153, 
            I0=>T_152 );
  GATE_DIS3a_D_I_1:   INV port map ( I0=>RDIS2aQ, 
            O=>DIS3a_D );
  GATE_DIS3b_D_I_1:   INV port map ( I0=>RDIS2bQ, 
            O=>DIS3b_D );
  GATE_DIS3c_D_I_1:   INV port map ( I0=>RDIS2cQ, 
            O=>DIS3c_D );
  GATE_DIS3d_D_I_1:   INV port map ( I0=>RDIS2dQ, 
            O=>DIS3d_D );
  GATE_DIS3e_D_I_1:   INV port map ( I0=>RDIS2eQ, 
            O=>DIS3e_D );
  GATE_DIS3f_D_I_1:   INV port map ( I0=>RDIS2fQ, 
            O=>DIS3f_D );
  GATE_DIS3g_D_I_1:   INV port map ( I0=>RDIS2gQ, 
            O=>DIS3g_D );
  GATE_DIS4a_D_I_1:   INV port map ( I0=>RDIS3aQ, 
            O=>DIS4a_D );
  GATE_DIS4b_D_I_1:   INV port map ( I0=>RDIS3bQ, 
            O=>DIS4b_D );
  GATE_DIS4c_D_I_1:   INV port map ( I0=>RDIS3cQ, 
            O=>DIS4c_D );
  GATE_DIS4d_D_I_1:   INV port map ( I0=>RDIS3dQ, 
            O=>DIS4d_D );
  GATE_DIS4e_D_I_1:   INV port map ( I0=>RDIS3eQ, 
            O=>DIS4e_D );
  GATE_DIS4f_D_I_1:   INV port map ( I0=>RDIS3fQ, 
            O=>DIS4f_D );
  GATE_DIS4g_D_I_1:   INV port map ( I0=>RDIS3gQ, 
            O=>DIS4g_D );
  GATE_T_17_I_1:   AND3 port map ( O=>T_17, 
            I2=>T_427, 
            I1=>LED16Q, 
            I0=>T_426 );
  GATE_LED17_I_1:   INV port map ( I0=>Q1Q, 
            O=>GATE_LED17_A );
  GATE_LED17_I_2:   INV port map ( I0=>Q2Q, 
            O=>GATE_LED17_B );
  GATE_LED17_I_3:   AND3 port map ( O=>LED17COM, 
            I0=>Q3Q, 
            I2=>GATE_LED17_A, 
            I1=>GATE_LED17_B );
  GATE_LED18_I_1:   NAN2 port map ( O=>LED18COM, 
            I0=>Q3Q, 
            I1=>GATE_LED18_A );
  GATE_LED18_I_2:   INV port map ( O=>GATE_LED18_A, 
            I0=>T_151 );
  GATE_timdiv1_D_I_1:   INV port map ( I0=>timdiv1Q, 
            O=>timdiv1_D );
  GATE_timdiv2_D_I_1:   INV port map ( I0=>timdiv2Q, 
            O=>timdiv2_D );
  GATE_X0_D_X1_I_1:   OR3 port map ( O=>X0_D_X1, 
            I2=>T_288, 
            I1=>T_61, 
            I0=>T_287 );
  GATE_X0_D_X2_I_1:   AND2 port map ( O=>X0_D_X2, 
            I1=>X4Q, 
            I0=>DIP0PIN );
  GATE_X1_D_I_1:   OR2 port map ( O=>X1_D, 
            I1=>T_150, 
            I0=>T_149 );
  GATE_X2_D_I_1:   OR2 port map ( O=>X2_D, 
            I1=>T_148, 
            I0=>T_147 );
  GATE_X3_D_I_1:   OR2 port map ( O=>X3_D, 
            I1=>T_146, 
            I0=>T_145 );
  GATE_X4_D_I_1:   OR2 port map ( O=>X4_D, 
            I1=>T_144, 
            I0=>T_143 );
  GATE_X5_D_I_1:   OR2 port map ( O=>X5_D, 
            I1=>T_142, 
            I0=>T_141 );
  GATE_X6_D_I_1:   OR2 port map ( O=>X6_D, 
            I1=>T_140, 
            I0=>T_139 );
  GATE_X7_D_I_1:   OR2 port map ( O=>X7_D, 
            I1=>T_138, 
            I0=>T_137 );
  GATE_BFC_AR_I_1:   INV port map ( I0=>S1_NCPIN, 
            O=>BFC_AR );
  GATE_BFC_AP_I_1:   INV port map ( I0=>S1_NOPIN, 
            O=>BFC_AP );
  GATE_Q0_D_X1_I_1:   OR3 port map ( O=>Q0_D_X1, 
            I2=>T_285, 
            I1=>T_286, 
            I0=>T_284 );
  GATE_Q0_D_X2_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_Q0_D_X2_A );
  GATE_Q0_D_X2_I_2:   INV port map ( I0=>Q3Q, 
            O=>GATE_Q0_D_X2_B );
  GATE_Q0_D_X2_I_3:   AND3 port map ( O=>Q0_D_X2, 
            I0=>Q0Q, 
            I2=>GATE_Q0_D_X2_A, 
            I1=>GATE_Q0_D_X2_B );
  GATE_Q1_D_I_1:   OR4 port map ( I0=>T_401, 
            I1=>T_400, 
            O=>Q1_D, 
            I2=>T_399, 
            I3=>T_398 );
  GATE_Q2_D_X1_I_1:   OR3 port map ( O=>Q2_D_X1, 
            I2=>T_269, 
            I1=>T_270, 
            I0=>T_268 );
  GATE_Q2_D_X2_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_Q2_D_X2_A );
  GATE_Q2_D_X2_I_2:   INV port map ( I0=>Q3Q, 
            O=>GATE_Q2_D_X2_B );
  GATE_Q2_D_X2_I_3:   AND3 port map ( O=>Q2_D_X2, 
            I0=>Q2Q, 
            I2=>GATE_Q2_D_X2_A, 
            I1=>GATE_Q2_D_X2_B );
  GATE_Q3_D_I_1:   OR4 port map ( I0=>T_363, 
            I1=>T_360, 
            O=>Q3_D, 
            I2=>T_357, 
            I3=>T_354 );
  GATE_RDIS2a_D_I_1:   OR3 port map ( O=>RDIS2a_D, 
            I2=>T_110, 
            I1=>T_109, 
            I0=>T_111 );
  GATE_RDIS2b_D_I_1:   OR2 port map ( O=>RDIS2b_D, 
            I1=>T_108, 
            I0=>T_107 );
  GATE_RDIS2c_D_I_1:   OR4 port map ( I0=>T_103, 
            I1=>T_104, 
            O=>RDIS2c_D, 
            I2=>T_105, 
            I3=>T_106 );
  GATE_RDIS2d_D_I_1:   OR4 port map ( I0=>T_99, 
            I1=>T_100, 
            O=>RDIS2d_D, 
            I2=>T_101, 
            I3=>T_102 );
  GATE_T_18_I_1:   NOR3 port map ( O=>T_18, 
            I2=>P2Q, 
            I1=>P3Q, 
            I0=>P1Q );
  GATE_RDIS2f_D_I_1:   OR4 port map ( I0=>T_95, 
            I1=>T_96, 
            O=>RDIS2f_D, 
            I2=>T_97, 
            I3=>T_98 );
  GATE_T_19_I_1:   OR2 port map ( O=>T_19, 
            I1=>T_94, 
            I0=>T_93 );
  GATE_P0_D_X1_I_1:   OR4 port map ( I0=>T_246, 
            I1=>T_245, 
            O=>P0_D_X1, 
            I2=>T_244, 
            I3=>T_243 );
  GATE_P0_D_X2_I_1:   NOR3 port map ( O=>P0_D_X2, 
            I2=>P2Q, 
            I1=>P3Q, 
            I0=>P0Q );
  GATE_P1_D_X1_I_1:   OR4 port map ( I0=>T_36, 
            I1=>T_225, 
            O=>P1_D_X1, 
            I2=>T_224, 
            I3=>T_223 );
  GATE_P1_D_X2_I_1:   AND3 port map ( O=>P1_D_X2, 
            I2=>T_221, 
            I1=>T_222, 
            I0=>T_220 );
  GATE_P2_D_I_1:   OR4 port map ( I0=>T_92, 
            I1=>T_333, 
            O=>P2_D, 
            I2=>T_332, 
            I3=>T_331 );
  GATE_P3_D_X1_I_1:   OR4 port map ( I0=>T_26, 
            I1=>T_199, 
            O=>P3_D_X1, 
            I2=>T_198, 
            I3=>T_197 );
  GATE_P3_D_X2_I_1:   AND3 port map ( O=>P3_D_X2, 
            I2=>T_196, 
            I1=>P3Q, 
            I0=>T_195 );
  GATE_LED9_D_I_1:   XOR2 port map ( O=>LED9_D, 
            I1=>LED9_D_X2, 
            I0=>LED9_D_X1 );
  GATE_LED10_D_I_1:   XOR2 port map ( O=>LED10_D, 
            I1=>LED10_D_X2, 
            I0=>LED10_D_X1 );
  GATE_LED11_D_I_1:   XOR2 port map ( O=>LED11_D, 
            I1=>LED11_D_X2, 
            I0=>LED11_D_X1 );
  GATE_LED12_D_I_1:   XOR2 port map ( O=>LED12_D, 
            I1=>LED12_D_X2, 
            I0=>LED12_D_X1 );
  GATE_LED13_D_I_1:   XOR2 port map ( O=>LED13_D, 
            I1=>LED13_D_X2, 
            I0=>LED13_D_X1 );
  GATE_LED14_D_I_1:   XOR2 port map ( O=>LED14_D, 
            I1=>LED14_D_X2, 
            I0=>LED14_D_X1 );
  GATE_LED15_D_I_1:   XOR2 port map ( O=>LED15_D, 
            I1=>LED15_D_X2, 
            I0=>LED15_D_X1 );
  GATE_X0_D_I_1:   XOR2 port map ( O=>X0_D, 
            I1=>X0_D_X2, 
            I0=>X0_D_X1 );
  GATE_Q0_D_I_1:   XOR2 port map ( O=>Q0_D, 
            I1=>Q0_D_X2, 
            I0=>Q0_D_X1 );
  GATE_Q2_D_I_1:   XOR2 port map ( O=>Q2_D, 
            I1=>Q2_D_X2, 
            I0=>Q2_D_X1 );
  GATE_P0_D_I_1:   XOR2 port map ( O=>P0_D, 
            I1=>P0_D_X2, 
            I0=>P0_D_X1 );
  GATE_P1_D_I_1:   XOR2 port map ( O=>P1_D, 
            I1=>P1_D_X2, 
            I0=>P1_D_X1 );
  GATE_P3_D_I_1:   XOR2 port map ( O=>P3_D, 
            I1=>P3_D_X2, 
            I0=>P3_D_X1 );
  GATE_LED0_I_1:   INV port map ( I0=>T_0, 
            O=>LED0COM );
  GATE_LED1_I_1:   INV port map ( I0=>T_1, 
            O=>LED1COM );
  GATE_LED2_I_1:   INV port map ( I0=>T_2, 
            O=>LED2COM );
  GATE_LED3_I_1:   INV port map ( I0=>T_3, 
            O=>LED3COM );
  GATE_LED4_I_1:   INV port map ( I0=>T_4, 
            O=>LED4COM );
  GATE_LED5_I_1:   INV port map ( I0=>T_5, 
            O=>LED5COM );
  GATE_LED6_I_1:   INV port map ( I0=>T_6, 
            O=>LED6COM );
  GATE_LED7_I_1:   INV port map ( I0=>T_7, 
            O=>LED7COM );
  GATE_LED8_D_I_1:   INV port map ( I0=>T_8, 
            O=>LED8_D );
  GATE_DIS1a_I_1:   INV port map ( I0=>T_9, 
            O=>DIS1aCOM );
  GATE_DIS1b_I_1:   INV port map ( I0=>T_10, 
            O=>DIS1bCOM );
  GATE_DIS1c_I_1:   INV port map ( I0=>T_11, 
            O=>DIS1cCOM );
  GATE_DIS1d_I_1:   INV port map ( I0=>T_12, 
            O=>DIS1dCOM );
  GATE_DIS2a_D_I_1:   INV port map ( I0=>T_13, 
            O=>DIS2a_D );
  GATE_DIS2b_D_I_1:   INV port map ( I0=>T_14, 
            O=>DIS2b_D );
  GATE_DIS2c_D_I_1:   INV port map ( I0=>T_15, 
            O=>DIS2c_D );
  GATE_DIS2d_D_I_1:   INV port map ( I0=>T_16, 
            O=>DIS2d_D );
  GATE_LED16_D_I_1:   INV port map ( I0=>T_17, 
            O=>LED16_D );
  GATE_RDIS2e_D_I_1:   INV port map ( I0=>T_18, 
            O=>RDIS2e_D );
  GATE_RDIS2g_D_I_1:   INV port map ( I0=>T_19, 
            O=>RDIS2g_D );
  GATE_T_20_I_1:   AND4 port map ( O=>T_20, 
            I3=>T_216, 
            I2=>T_217, 
            I1=>T_218, 
            I0=>T_219 );
  GATE_T_21_I_1:   AND4 port map ( O=>T_21, 
            I3=>T_212, 
            I2=>T_213, 
            I1=>T_214, 
            I0=>T_215 );
  GATE_T_22_I_1:   AND4 port map ( O=>T_22, 
            I3=>T_209, 
            I2=>T_210, 
            I1=>T_211, 
            I0=>GATE_T_22_A );
  GATE_T_22_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_22_A );
  GATE_T_23_I_1:   AND3 port map ( O=>T_23, 
            I2=>T_207, 
            I1=>T_208, 
            I0=>T_206 );
  GATE_T_24_I_1:   AND3 port map ( O=>T_24, 
            I2=>T_204, 
            I1=>T_205, 
            I0=>T_203 );
  GATE_T_25_I_1:   AND3 port map ( O=>T_25, 
            I2=>T_201, 
            I1=>T_202, 
            I0=>T_200 );
  GATE_T_26_I_3:   AND4 port map ( O=>T_26, 
            I3=>P3Q, 
            I2=>Q3Q, 
            I1=>GATE_T_26_B, 
            I0=>GATE_T_26_A );
  GATE_T_26_I_2:   INV port map ( I0=>P1Q, 
            O=>GATE_T_26_B );
  GATE_T_26_I_1:   INV port map ( I0=>P2Q, 
            O=>GATE_T_26_A );
  GATE_T_27_I_1:   AND4 port map ( O=>T_27, 
            I3=>T_240, 
            I2=>T_241, 
            I1=>T_242, 
            I0=>GATE_T_27_A );
  GATE_T_27_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_27_A );
  GATE_T_28_I_1:   AND4 port map ( O=>T_28, 
            I3=>T_237, 
            I2=>T_238, 
            I1=>T_239, 
            I0=>P0Q );
  GATE_T_29_I_1:   AND4 port map ( O=>T_29, 
            I3=>T_234, 
            I2=>T_235, 
            I1=>T_236, 
            I0=>P1Q );
  GATE_T_30_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_30_A );
  GATE_T_30_I_2:   AND3 port map ( O=>T_30, 
            I2=>T_233, 
            I1=>T_232, 
            I0=>GATE_T_30_A );
  GATE_T_31_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_31_A );
  GATE_T_31_I_2:   AND3 port map ( O=>T_31, 
            I2=>T_231, 
            I1=>T_230, 
            I0=>GATE_T_31_A );
  GATE_T_32_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_32_A );
  GATE_T_32_I_2:   AND3 port map ( O=>T_32, 
            I2=>T_229, 
            I1=>T_228, 
            I0=>GATE_T_32_A );
  GATE_T_33_I_1:   AND3 port map ( O=>T_33, 
            I2=>T_227, 
            I1=>P0Q, 
            I0=>T_226 );
  GATE_T_34_I_3:   AND4 port map ( O=>T_34, 
            I3=>P0Q, 
            I2=>Q1Q, 
            I1=>GATE_T_34_B, 
            I0=>GATE_T_34_A );
  GATE_T_34_I_2:   INV port map ( I0=>P1Q, 
            O=>GATE_T_34_B );
  GATE_T_34_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_34_A );
  GATE_T_35_I_3:   AND4 port map ( O=>T_35, 
            I3=>P0Q, 
            I2=>Q2Q, 
            I1=>GATE_T_35_B, 
            I0=>GATE_T_35_A );
  GATE_T_35_I_2:   INV port map ( I0=>P1Q, 
            O=>GATE_T_35_B );
  GATE_T_35_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_35_A );
  GATE_T_36_I_1:   NOR4 port map ( I0=>Q3Q, 
            I1=>P3Q, 
            O=>T_36, 
            I2=>P1Q, 
            I3=>GATE_T_36_DN );
  GATE_T_36_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_36_DN );
  GATE_T_37_I_1:   AND4 port map ( O=>T_37, 
            I3=>T_265, 
            I2=>T_266, 
            I1=>T_267, 
            I0=>GATE_T_37_A );
  GATE_T_37_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_37_A );
  GATE_T_38_I_1:   AND4 port map ( O=>T_38, 
            I3=>T_262, 
            I2=>T_263, 
            I1=>T_264, 
            I0=>GATE_T_38_A );
  GATE_T_38_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_38_A );
  GATE_T_39_I_1:   AND3 port map ( O=>T_39, 
            I2=>T_260, 
            I1=>T_261, 
            I0=>T_259 );
  GATE_T_40_I_1:   AND3 port map ( O=>T_40, 
            I2=>T_257, 
            I1=>T_258, 
            I0=>T_256 );
  GATE_T_41_I_1:   AND3 port map ( O=>T_41, 
            I2=>T_254, 
            I1=>T_255, 
            I0=>T_253 );
  GATE_T_42_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_42_A );
  GATE_T_42_I_2:   AND3 port map ( O=>T_42, 
            I2=>T_252, 
            I1=>T_251, 
            I0=>GATE_T_42_A );
  GATE_T_43_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_43_A );
  GATE_T_43_I_2:   AND3 port map ( O=>T_43, 
            I2=>T_250, 
            I1=>T_249, 
            I0=>GATE_T_43_A );
  GATE_T_44_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_44_A );
  GATE_T_44_I_2:   AND3 port map ( O=>T_44, 
            I2=>T_248, 
            I1=>T_247, 
            I0=>GATE_T_44_A );
  GATE_T_45_I_1:   AND3 port map ( O=>T_45, 
            I2=>T_282, 
            I1=>T_283, 
            I0=>T_281 );
  GATE_T_46_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_T_46_A );
  GATE_T_46_I_2:   AND3 port map ( O=>T_46, 
            I2=>T_280, 
            I1=>T_279, 
            I0=>GATE_T_46_A );
  GATE_T_47_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_T_47_A );
  GATE_T_47_I_2:   AND3 port map ( O=>T_47, 
            I2=>T_278, 
            I1=>T_277, 
            I0=>GATE_T_47_A );
  GATE_T_48_I_1:   INV port map ( I0=>Q0Q, 
            O=>GATE_T_48_A );
  GATE_T_48_I_2:   AND3 port map ( O=>T_48, 
            I2=>T_276, 
            I1=>T_275, 
            I0=>GATE_T_48_A );
  GATE_T_49_I_1:   INV port map ( I0=>Q0Q, 
            O=>GATE_T_49_A );
  GATE_T_49_I_2:   AND3 port map ( O=>T_49, 
            I2=>T_274, 
            I1=>T_273, 
            I0=>GATE_T_49_A );
  GATE_T_50_I_1:   AND3 port map ( O=>T_50, 
            I2=>T_272, 
            I1=>Q0Q, 
            I0=>T_271 );
  GATE_T_51_I_3:   AND4 port map ( O=>T_51, 
            I3=>Q0Q, 
            I2=>Q3Q, 
            I1=>GATE_T_51_B, 
            I0=>GATE_T_51_A );
  GATE_T_51_I_2:   INV port map ( I0=>Q1Q, 
            O=>GATE_T_51_B );
  GATE_T_51_I_1:   INV port map ( I0=>Q2Q, 
            O=>GATE_T_51_A );
  GATE_T_52_I_1:   NOR4 port map ( I0=>Q2Q, 
            I1=>Q1Q, 
            O=>T_52, 
            I2=>Q3Q, 
            I3=>GATE_T_52_DN );
  GATE_T_52_I_2:   INV port map ( I0=>X1Q, 
            O=>GATE_T_52_DN );
  GATE_T_53_I_3:   AND4 port map ( O=>T_53, 
            I3=>Q2Q, 
            I2=>X5Q, 
            I1=>GATE_T_53_B, 
            I0=>GATE_T_53_A );
  GATE_T_53_I_2:   INV port map ( I0=>Q1Q, 
            O=>GATE_T_53_B );
  GATE_T_53_I_1:   INV port map ( I0=>Q3Q, 
            O=>GATE_T_53_A );
  GATE_T_54_I_3:   AND4 port map ( O=>T_54, 
            I3=>Q1Q, 
            I2=>X3Q, 
            I1=>GATE_T_54_B, 
            I0=>GATE_T_54_A );
  GATE_T_54_I_2:   INV port map ( I0=>Q2Q, 
            O=>GATE_T_54_B );
  GATE_T_54_I_1:   INV port map ( I0=>Q3Q, 
            O=>GATE_T_54_A );
  GATE_T_55_I_1:   AND4 port map ( O=>T_55, 
            I3=>Q1Q, 
            I2=>Q2Q, 
            I1=>X7Q, 
            I0=>GATE_T_55_A );
  GATE_T_55_I_2:   INV port map ( I0=>Q3Q, 
            O=>GATE_T_55_A );
  GATE_T_56_I_1:   NOR2 port map ( O=>T_56, 
            I1=>Q0Q, 
            I0=>Q3Q );
  GATE_T_57_I_1:   INV port map ( I0=>X0Q, 
            O=>GATE_T_57_A );
  GATE_T_57_I_2:   INV port map ( I0=>X2Q, 
            O=>GATE_T_57_B );
  GATE_T_57_I_3:   AND3 port map ( O=>T_57, 
            I0=>X3Q, 
            I2=>GATE_T_57_A, 
            I1=>GATE_T_57_B );
  GATE_T_58_I_1:   INV port map ( I0=>X0Q, 
            O=>GATE_T_58_A );
  GATE_T_58_I_2:   INV port map ( I0=>X3Q, 
            O=>GATE_T_58_B );
  GATE_T_58_I_3:   AND3 port map ( O=>T_58, 
            I0=>X2Q, 
            I2=>GATE_T_58_A, 
            I1=>GATE_T_58_B );
  GATE_T_59_I_1:   INV port map ( I0=>X2Q, 
            O=>GATE_T_59_A );
  GATE_T_59_I_2:   INV port map ( I0=>X3Q, 
            O=>GATE_T_59_B );
  GATE_T_59_I_3:   AND3 port map ( O=>T_59, 
            I0=>X0Q, 
            I2=>GATE_T_59_A, 
            I1=>GATE_T_59_B );
  GATE_T_60_I_1:   AND3 port map ( O=>T_60, 
            I2=>X2Q, 
            I1=>X3Q, 
            I0=>X0Q );
  GATE_T_61_I_1:   AND2 port map ( O=>T_61, 
            I1=>X0Q, 
            I0=>GATE_T_61_A );
  GATE_T_61_I_2:   INV port map ( O=>GATE_T_61_A, 
            I0=>DIP0PIN );
  GATE_T_62_I_1:   AND3 port map ( O=>T_62, 
            I2=>T_293, 
            I1=>T_294, 
            I0=>T_292 );
  GATE_T_63_I_1:   AND3 port map ( O=>T_63, 
            I2=>T_290, 
            I1=>T_291, 
            I0=>T_289 );
  GATE_T_64_I_1:   AND2 port map ( O=>T_64, 
            I1=>LED14Q, 
            I0=>GATE_T_64_A );
  GATE_T_64_I_2:   INV port map ( O=>GATE_T_64_A, 
            I0=>Q3Q );
  GATE_T_65_I_1:   AND3 port map ( O=>T_65, 
            I2=>T_299, 
            I1=>T_300, 
            I0=>T_298 );
  GATE_T_66_I_1:   AND3 port map ( O=>T_66, 
            I2=>T_296, 
            I1=>T_297, 
            I0=>T_295 );
  GATE_T_67_I_1:   AND2 port map ( O=>T_67, 
            I1=>LED13Q, 
            I0=>GATE_T_67_A );
  GATE_T_67_I_2:   INV port map ( O=>GATE_T_67_A, 
            I0=>Q3Q );
  GATE_T_68_I_1:   AND3 port map ( O=>T_68, 
            I2=>T_305, 
            I1=>T_306, 
            I0=>T_304 );
  GATE_T_69_I_1:   AND3 port map ( O=>T_69, 
            I2=>T_302, 
            I1=>T_303, 
            I0=>T_301 );
  GATE_T_70_I_1:   AND2 port map ( O=>T_70, 
            I1=>LED12Q, 
            I0=>GATE_T_70_A );
  GATE_T_70_I_2:   INV port map ( O=>GATE_T_70_A, 
            I0=>Q3Q );
  GATE_T_71_I_1:   AND3 port map ( O=>T_71, 
            I2=>T_311, 
            I1=>T_312, 
            I0=>T_310 );
  GATE_T_72_I_1:   AND3 port map ( O=>T_72, 
            I2=>T_308, 
            I1=>T_309, 
            I0=>T_307 );
  GATE_T_73_I_1:   AND2 port map ( O=>T_73, 
            I1=>LED11Q, 
            I0=>GATE_T_73_A );
  GATE_T_73_I_2:   INV port map ( O=>GATE_T_73_A, 
            I0=>Q3Q );
  GATE_T_74_I_1:   AND3 port map ( O=>T_74, 
            I2=>T_317, 
            I1=>T_318, 
            I0=>T_316 );
  GATE_T_75_I_1:   AND3 port map ( O=>T_75, 
            I2=>T_314, 
            I1=>T_315, 
            I0=>T_313 );
  GATE_T_76_I_1:   AND2 port map ( O=>T_76, 
            I1=>LED10Q, 
            I0=>GATE_T_76_A );
  GATE_T_76_I_2:   INV port map ( O=>GATE_T_76_A, 
            I0=>Q3Q );
  GATE_T_77_I_1:   AND3 port map ( O=>T_77, 
            I2=>T_323, 
            I1=>T_324, 
            I0=>T_322 );
  GATE_T_78_I_1:   AND3 port map ( O=>T_78, 
            I2=>T_320, 
            I1=>T_321, 
            I0=>T_319 );
  GATE_T_79_I_1:   AND2 port map ( O=>T_79, 
            I1=>LED9Q, 
            I0=>GATE_T_79_A );
  GATE_T_79_I_2:   INV port map ( O=>GATE_T_79_A, 
            I0=>Q3Q );
  GATE_T_80_I_1:   AND3 port map ( O=>T_80, 
            I2=>T_329, 
            I1=>T_330, 
            I0=>T_328 );
  GATE_T_81_I_1:   AND3 port map ( O=>T_81, 
            I2=>T_326, 
            I1=>T_327, 
            I0=>T_325 );
  GATE_T_82_I_1:   AND2 port map ( O=>T_82, 
            I1=>LED8Q, 
            I0=>GATE_T_82_A );
  GATE_T_82_I_2:   INV port map ( O=>GATE_T_82_A, 
            I0=>Q3Q );
  GATE_T_83_I_1:   AND4 port map ( O=>T_83, 
            I3=>T_350, 
            I2=>T_351, 
            I1=>T_352, 
            I0=>T_353 );
  GATE_T_84_I_1:   AND4 port map ( O=>T_84, 
            I3=>T_346, 
            I2=>T_347, 
            I1=>T_348, 
            I0=>T_349 );
  GATE_T_85_I_1:   AND4 port map ( O=>T_85, 
            I3=>T_343, 
            I2=>T_344, 
            I1=>T_345, 
            I0=>GATE_T_85_A );
  GATE_T_85_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_85_A );
  GATE_T_86_I_1:   AND4 port map ( O=>T_86, 
            I3=>T_340, 
            I2=>T_341, 
            I1=>T_342, 
            I0=>GATE_T_86_A );
  GATE_T_86_I_2:   INV port map ( I0=>P1Q, 
            O=>GATE_T_86_A );
  GATE_T_87_I_1:   AND3 port map ( O=>T_87, 
            I2=>T_339, 
            I1=>P0Q, 
            I0=>T_338 );
  GATE_T_88_I_1:   AND3 port map ( O=>T_88, 
            I2=>T_337, 
            I1=>P0Q, 
            I0=>T_336 );
  GATE_T_89_I_1:   AND3 port map ( O=>T_89, 
            I2=>T_335, 
            I1=>P0Q, 
            I0=>T_334 );
  GATE_T_90_I_3:   AND4 port map ( O=>T_90, 
            I3=>P2Q, 
            I2=>Q1Q, 
            I1=>GATE_T_90_B, 
            I0=>GATE_T_90_A );
  GATE_T_90_I_2:   INV port map ( I0=>P1Q, 
            O=>GATE_T_90_B );
  GATE_T_90_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_90_A );
  GATE_T_91_I_3:   AND4 port map ( O=>T_91, 
            I3=>P2Q, 
            I2=>Q2Q, 
            I1=>GATE_T_91_B, 
            I0=>GATE_T_91_A );
  GATE_T_91_I_2:   INV port map ( I0=>P1Q, 
            O=>GATE_T_91_B );
  GATE_T_91_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_91_A );
  GATE_T_92_I_1:   NOR4 port map ( I0=>Q3Q, 
            I1=>P3Q, 
            O=>T_92, 
            I2=>P1Q, 
            I3=>GATE_T_92_DN );
  GATE_T_92_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_92_DN );
  GATE_T_93_I_3:   AND4 port map ( O=>T_93, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>GATE_T_93_B, 
            I0=>GATE_T_93_A );
  GATE_T_93_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_93_B );
  GATE_T_93_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_93_A );
  GATE_T_94_I_1:   NOR3 port map ( O=>T_94, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>P0Q );
  GATE_T_95_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_95_A );
  GATE_T_95_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_95_B );
  GATE_T_95_I_3:   AND3 port map ( O=>T_95, 
            I0=>P1Q, 
            I2=>GATE_T_95_A, 
            I1=>GATE_T_95_B );
  GATE_T_96_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_96_A );
  GATE_T_96_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_96_B );
  GATE_T_96_I_3:   AND3 port map ( O=>T_96, 
            I0=>P2Q, 
            I2=>GATE_T_96_A, 
            I1=>GATE_T_96_B );
  GATE_T_97_I_1:   INV port map ( I0=>P1Q, 
            O=>GATE_T_97_A );
  GATE_T_97_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_97_B );
  GATE_T_97_I_3:   AND3 port map ( O=>T_97, 
            I0=>P3Q, 
            I2=>GATE_T_97_A, 
            I1=>GATE_T_97_B );
  GATE_T_98_I_1:   AND2 port map ( O=>T_98, 
            I1=>P0Q, 
            I0=>GATE_T_98_A );
  GATE_T_98_I_2:   INV port map ( O=>GATE_T_98_A, 
            I0=>P2Q );
  GATE_T_99_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_99_A );
  GATE_T_99_I_2:   AND3 port map ( O=>T_99, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>GATE_T_99_A );
  GATE_T_100_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_100_A );
  GATE_T_100_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_100_B );
  GATE_T_100_I_3:   AND3 port map ( O=>T_100, 
            I0=>P2Q, 
            I2=>GATE_T_100_A, 
            I1=>GATE_T_100_B );
  GATE_T_101_I_1:   AND2 port map ( O=>T_101, 
            I1=>P0Q, 
            I0=>GATE_T_101_A );
  GATE_T_101_I_2:   INV port map ( O=>GATE_T_101_A, 
            I0=>P2Q );
  GATE_T_102_I_1:   AND2 port map ( O=>T_102, 
            I1=>P1Q, 
            I0=>GATE_T_102_A );
  GATE_T_102_I_2:   INV port map ( O=>GATE_T_102_A, 
            I0=>P3Q );
  GATE_T_103_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_103, 
            I2=>P3Q, 
            I3=>GATE_T_103_DN );
  GATE_T_103_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_103_DN );
  GATE_T_104_I_1:   NOR4 port map ( I0=>P3Q, 
            I1=>P2Q, 
            O=>T_104, 
            I2=>P1Q, 
            I3=>GATE_T_104_DN );
  GATE_T_104_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_104_DN );
  GATE_T_105_I_1:   AND4 port map ( O=>T_105, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>GATE_T_105_A );
  GATE_T_105_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_105_A );
  GATE_T_106_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_106_A );
  GATE_T_106_I_2:   AND3 port map ( O=>T_106, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>GATE_T_106_A );
  GATE_T_107_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_107, 
            I2=>P2Q, 
            I3=>GATE_T_107_DN );
  GATE_T_107_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_107_DN );
  GATE_T_108_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_108, 
            I2=>P3Q, 
            I3=>GATE_T_108_DN );
  GATE_T_108_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_108_DN );
  GATE_T_109_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_109_A );
  GATE_T_109_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_109_B );
  GATE_T_109_I_3:   AND3 port map ( O=>T_109, 
            I0=>P1Q, 
            I2=>GATE_T_109_A, 
            I1=>GATE_T_109_B );
  GATE_T_110_I_1:   INV port map ( I0=>P1Q, 
            O=>GATE_T_110_A );
  GATE_T_110_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_110_B );
  GATE_T_110_I_3:   AND3 port map ( O=>T_110, 
            I0=>P3Q, 
            I2=>GATE_T_110_A, 
            I1=>GATE_T_110_B );
  GATE_T_111_I_1:   AND2 port map ( O=>T_111, 
            I1=>P0Q, 
            I0=>GATE_T_111_A );
  GATE_T_111_I_2:   INV port map ( O=>GATE_T_111_A, 
            I0=>P2Q );
  GATE_T_112_I_1:   AND3 port map ( O=>T_112, 
            I2=>T_396, 
            I1=>T_397, 
            I0=>T_395 );
  GATE_T_113_I_1:   AND3 port map ( O=>T_113, 
            I2=>T_393, 
            I1=>T_394, 
            I0=>T_392 );
  GATE_T_114_I_1:   AND3 port map ( O=>T_114, 
            I2=>T_390, 
            I1=>T_391, 
            I0=>T_389 );
  GATE_T_115_I_1:   AND3 port map ( O=>T_115, 
            I2=>T_387, 
            I1=>T_388, 
            I0=>T_386 );
  GATE_T_116_I_1:   AND3 port map ( O=>T_116, 
            I2=>T_384, 
            I1=>T_385, 
            I0=>T_383 );
  GATE_T_117_I_1:   AND3 port map ( O=>T_117, 
            I2=>T_381, 
            I1=>T_382, 
            I0=>T_380 );
  GATE_T_118_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_T_118_A );
  GATE_T_118_I_2:   AND3 port map ( O=>T_118, 
            I2=>T_379, 
            I1=>T_378, 
            I0=>GATE_T_118_A );
  GATE_T_119_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_T_119_A );
  GATE_T_119_I_2:   AND3 port map ( O=>T_119, 
            I2=>T_377, 
            I1=>T_376, 
            I0=>GATE_T_119_A );
  GATE_T_120_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_T_120_A );
  GATE_T_120_I_2:   AND3 port map ( O=>T_120, 
            I2=>T_375, 
            I1=>T_374, 
            I0=>GATE_T_120_A );
  GATE_T_121_I_1:   INV port map ( I0=>S2_NOPIN, 
            O=>GATE_T_121_A );
  GATE_T_121_I_2:   AND3 port map ( O=>T_121, 
            I2=>T_373, 
            I1=>T_372, 
            I0=>GATE_T_121_A );
  GATE_T_122_I_1:   AND3 port map ( O=>T_122, 
            I2=>T_371, 
            I1=>S2_NOPIN, 
            I0=>T_370 );
  GATE_T_123_I_1:   AND3 port map ( O=>T_123, 
            I2=>T_369, 
            I1=>S2_NOPIN, 
            I0=>T_368 );
  GATE_T_124_I_1:   AND3 port map ( O=>T_124, 
            I2=>T_367, 
            I1=>S2_NOPIN, 
            I0=>T_366 );
  GATE_T_125_I_1:   AND3 port map ( O=>T_125, 
            I2=>T_365, 
            I1=>S2_NOPIN, 
            I0=>T_364 );
  GATE_T_126_I_1:   NOR4 port map ( I0=>Q1Q, 
            I1=>DIP2PIN, 
            O=>T_126, 
            I2=>Q2Q, 
            I3=>GATE_T_126_DN );
  GATE_T_126_I_2:   INV port map ( I0=>Q3Q, 
            O=>GATE_T_126_DN );
  GATE_T_127_I_3:   AND4 port map ( O=>T_127, 
            I3=>Q0Q, 
            I2=>Q3Q, 
            I1=>GATE_T_127_B, 
            I0=>GATE_T_127_A );
  GATE_T_127_I_2:   INV port map ( I0=>Q1Q, 
            O=>GATE_T_127_B );
  GATE_T_127_I_1:   INV port map ( I0=>Q2Q, 
            O=>GATE_T_127_A );
  GATE_T_128_I_1:   AND4 port map ( O=>T_128, 
            I3=>Q0Q, 
            I2=>Q1Q, 
            I1=>Q2Q, 
            I0=>GATE_T_128_A );
  GATE_T_128_I_2:   INV port map ( I0=>Q3Q, 
            O=>GATE_T_128_A );
  GATE_T_129_I_1:   AND3 port map ( O=>T_129, 
            I2=>T_424, 
            I1=>T_425, 
            I0=>T_423 );
  GATE_T_130_I_1:   AND3 port map ( O=>T_130, 
            I2=>T_421, 
            I1=>T_422, 
            I0=>T_420 );
  GATE_T_131_I_1:   AND3 port map ( O=>T_131, 
            I2=>T_418, 
            I1=>T_419, 
            I0=>T_417 );
  GATE_T_132_I_1:   AND3 port map ( O=>T_132, 
            I2=>T_415, 
            I1=>T_416, 
            I0=>T_414 );
  GATE_T_133_I_1:   AND3 port map ( O=>T_133, 
            I2=>T_412, 
            I1=>T_413, 
            I0=>T_411 );
  GATE_T_134_I_1:   AND3 port map ( O=>T_134, 
            I2=>T_409, 
            I1=>T_410, 
            I0=>T_408 );
  GATE_T_135_I_1:   AND3 port map ( O=>T_135, 
            I2=>T_406, 
            I1=>T_407, 
            I0=>T_405 );
  GATE_T_136_I_1:   AND3 port map ( O=>T_136, 
            I2=>T_403, 
            I1=>T_404, 
            I0=>T_402 );
  GATE_T_137_I_1:   AND2 port map ( O=>T_137, 
            I1=>X7Q, 
            I0=>GATE_T_137_A );
  GATE_T_137_I_2:   INV port map ( O=>GATE_T_137_A, 
            I0=>DIP0PIN );
  GATE_T_138_I_1:   AND2 port map ( O=>T_138, 
            I1=>X6Q, 
            I0=>DIP0PIN );
  GATE_T_139_I_1:   AND2 port map ( O=>T_139, 
            I1=>X6Q, 
            I0=>GATE_T_139_A );
  GATE_T_139_I_2:   INV port map ( O=>GATE_T_139_A, 
            I0=>DIP0PIN );
  GATE_T_140_I_1:   AND2 port map ( O=>T_140, 
            I1=>X5Q, 
            I0=>DIP0PIN );
  GATE_T_141_I_1:   AND2 port map ( O=>T_141, 
            I1=>X5Q, 
            I0=>GATE_T_141_A );
  GATE_T_141_I_2:   INV port map ( O=>GATE_T_141_A, 
            I0=>DIP0PIN );
  GATE_T_142_I_1:   AND2 port map ( O=>T_142, 
            I1=>X4Q, 
            I0=>DIP0PIN );
  GATE_T_143_I_1:   AND2 port map ( O=>T_143, 
            I1=>X3Q, 
            I0=>DIP0PIN );
  GATE_T_144_I_1:   AND2 port map ( O=>T_144, 
            I1=>X4Q, 
            I0=>GATE_T_144_A );
  GATE_T_144_I_2:   INV port map ( O=>GATE_T_144_A, 
            I0=>DIP0PIN );
  GATE_T_145_I_1:   AND2 port map ( O=>T_145, 
            I1=>X2Q, 
            I0=>DIP0PIN );
  GATE_T_146_I_1:   AND2 port map ( O=>T_146, 
            I1=>X3Q, 
            I0=>GATE_T_146_A );
  GATE_T_146_I_2:   INV port map ( O=>GATE_T_146_A, 
            I0=>DIP0PIN );
  GATE_T_147_I_1:   AND2 port map ( O=>T_147, 
            I1=>X1Q, 
            I0=>DIP0PIN );
  GATE_T_148_I_1:   AND2 port map ( O=>T_148, 
            I1=>X2Q, 
            I0=>GATE_T_148_A );
  GATE_T_148_I_2:   INV port map ( O=>GATE_T_148_A, 
            I0=>DIP0PIN );
  GATE_T_149_I_1:   AND2 port map ( O=>T_149, 
            I1=>X1Q, 
            I0=>GATE_T_149_A );
  GATE_T_149_I_2:   INV port map ( O=>GATE_T_149_A, 
            I0=>DIP0PIN );
  GATE_T_150_I_1:   AND2 port map ( O=>T_150, 
            I1=>X0Q, 
            I0=>DIP0PIN );
  GATE_T_151_I_1:   INV port map ( I0=>Q1Q, 
            O=>GATE_T_151_A );
  GATE_T_151_I_2:   INV port map ( I0=>Q2Q, 
            O=>GATE_T_151_B );
  GATE_T_151_I_3:   AND3 port map ( O=>T_151, 
            I0=>Q0Q, 
            I2=>GATE_T_151_A, 
            I1=>GATE_T_151_B );
  GATE_T_152_I_3:   AND4 port map ( O=>T_152, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>GATE_T_152_B, 
            I0=>GATE_T_152_A );
  GATE_T_152_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_152_B );
  GATE_T_152_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_152_A );
  GATE_T_153_I_1:   NOR3 port map ( O=>T_153, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>P0Q );
  GATE_T_154_I_14:   NOR4 port map ( O=>T_154, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_155_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_155_A );
  GATE_T_155_I_2:   AND3 port map ( O=>T_155, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>GATE_T_155_A );
  GATE_T_156_I_1:   AND2 port map ( O=>T_156, 
            I1=>P0Q, 
            I0=>P2Q );
  GATE_T_157_I_1:   AND2 port map ( O=>T_157, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_158_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_158_A );
  GATE_T_158_I_2:   AND3 port map ( O=>T_158, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>GATE_T_158_A );
  GATE_T_159_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_159_A );
  GATE_T_159_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_159_B );
  GATE_T_159_I_3:   AND3 port map ( O=>T_159, 
            I0=>P2Q, 
            I2=>GATE_T_159_A, 
            I1=>GATE_T_159_B );
  GATE_T_160_I_1:   AND2 port map ( O=>T_160, 
            I1=>P0Q, 
            I0=>GATE_T_160_A );
  GATE_T_160_I_2:   INV port map ( O=>GATE_T_160_A, 
            I0=>P2Q );
  GATE_T_161_I_1:   AND2 port map ( O=>T_161, 
            I1=>P1Q, 
            I0=>GATE_T_161_A );
  GATE_T_161_I_2:   INV port map ( O=>GATE_T_161_A, 
            I0=>P3Q );
  GATE_T_162_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_162, 
            I2=>P3Q, 
            I3=>GATE_T_162_DN );
  GATE_T_162_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_162_DN );
  GATE_T_163_I_1:   NOR4 port map ( I0=>P3Q, 
            I1=>P2Q, 
            O=>T_163, 
            I2=>P1Q, 
            I3=>GATE_T_163_DN );
  GATE_T_163_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_163_DN );
  GATE_T_164_I_1:   AND4 port map ( O=>T_164, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>GATE_T_164_A );
  GATE_T_164_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_164_A );
  GATE_T_165_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_165_A );
  GATE_T_165_I_2:   AND3 port map ( O=>T_165, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>GATE_T_165_A );
  GATE_T_166_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_166, 
            I2=>P2Q, 
            I3=>GATE_T_166_DN );
  GATE_T_166_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_166_DN );
  GATE_T_167_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_167, 
            I2=>P3Q, 
            I3=>GATE_T_167_DN );
  GATE_T_167_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_167_DN );
  GATE_T_168_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_168_A );
  GATE_T_168_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_168_B );
  GATE_T_168_I_3:   AND3 port map ( O=>T_168, 
            I0=>P1Q, 
            I2=>GATE_T_168_A, 
            I1=>GATE_T_168_B );
  GATE_T_169_I_1:   INV port map ( I0=>P1Q, 
            O=>GATE_T_169_A );
  GATE_T_169_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_169_B );
  GATE_T_169_I_3:   AND3 port map ( O=>T_169, 
            I0=>P3Q, 
            I2=>GATE_T_169_A, 
            I1=>GATE_T_169_B );
  GATE_T_170_I_1:   AND2 port map ( O=>T_170, 
            I1=>P0Q, 
            I0=>GATE_T_170_A );
  GATE_T_170_I_2:   INV port map ( O=>GATE_T_170_A, 
            I0=>P2Q );
  GATE_T_171_I_3:   AND4 port map ( O=>T_171, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>GATE_T_171_B, 
            I0=>GATE_T_171_A );
  GATE_T_171_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_171_B );
  GATE_T_171_I_1:   INV port map ( I0=>P3Q, 
            O=>GATE_T_171_A );
  GATE_T_172_I_1:   NOR3 port map ( O=>T_172, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>P0Q );
  GATE_T_173_I_14:   NOR4 port map ( O=>T_173, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_174_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_174_A );
  GATE_T_174_I_2:   AND3 port map ( O=>T_174, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>GATE_T_174_A );
  GATE_T_175_I_1:   AND2 port map ( O=>T_175, 
            I1=>P0Q, 
            I0=>P2Q );
  GATE_T_176_I_1:   AND2 port map ( O=>T_176, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_177_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_177_A );
  GATE_T_177_I_2:   AND3 port map ( O=>T_177, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>GATE_T_177_A );
  GATE_T_178_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_178_A );
  GATE_T_178_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_178_B );
  GATE_T_178_I_3:   AND3 port map ( O=>T_178, 
            I0=>P2Q, 
            I2=>GATE_T_178_A, 
            I1=>GATE_T_178_B );
  GATE_T_179_I_1:   AND2 port map ( O=>T_179, 
            I1=>P0Q, 
            I0=>GATE_T_179_A );
  GATE_T_179_I_2:   INV port map ( O=>GATE_T_179_A, 
            I0=>P2Q );
  GATE_T_180_I_1:   AND2 port map ( O=>T_180, 
            I1=>P1Q, 
            I0=>GATE_T_180_A );
  GATE_T_180_I_2:   INV port map ( O=>GATE_T_180_A, 
            I0=>P3Q );
  GATE_T_181_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_181, 
            I2=>P3Q, 
            I3=>GATE_T_181_DN );
  GATE_T_181_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_181_DN );
  GATE_T_182_I_1:   NOR4 port map ( I0=>P3Q, 
            I1=>P2Q, 
            O=>T_182, 
            I2=>P1Q, 
            I3=>GATE_T_182_DN );
  GATE_T_182_I_2:   INV port map ( I0=>P0Q, 
            O=>GATE_T_182_DN );
  GATE_T_183_I_1:   AND4 port map ( O=>T_183, 
            I3=>P0Q, 
            I2=>P1Q, 
            I1=>P2Q, 
            I0=>GATE_T_183_A );
  GATE_T_183_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_183_A );
  GATE_T_184_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_184_A );
  GATE_T_184_I_2:   AND3 port map ( O=>T_184, 
            I2=>P1Q, 
            I1=>P3Q, 
            I0=>GATE_T_184_A );
  GATE_T_185_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_185, 
            I2=>P2Q, 
            I3=>GATE_T_185_DN );
  GATE_T_185_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_185_DN );
  GATE_T_186_I_1:   NOR4 port map ( I0=>P1Q, 
            I1=>P0Q, 
            O=>T_186, 
            I2=>P3Q, 
            I3=>GATE_T_186_DN );
  GATE_T_186_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_186_DN );
  GATE_T_187_I_1:   INV port map ( I0=>P0Q, 
            O=>GATE_T_187_A );
  GATE_T_187_I_2:   INV port map ( I0=>P3Q, 
            O=>GATE_T_187_B );
  GATE_T_187_I_3:   AND3 port map ( O=>T_187, 
            I0=>P1Q, 
            I2=>GATE_T_187_A, 
            I1=>GATE_T_187_B );
  GATE_T_188_I_1:   INV port map ( I0=>P1Q, 
            O=>GATE_T_188_A );
  GATE_T_188_I_2:   INV port map ( I0=>P2Q, 
            O=>GATE_T_188_B );
  GATE_T_188_I_3:   AND3 port map ( O=>T_188, 
            I0=>P3Q, 
            I2=>GATE_T_188_A, 
            I1=>GATE_T_188_B );
  GATE_T_189_I_1:   AND2 port map ( O=>T_189, 
            I1=>P0Q, 
            I0=>GATE_T_189_A );
  GATE_T_189_I_2:   INV port map ( O=>GATE_T_189_A, 
            I0=>P2Q );
  GATE_T_190_I_1:   AND4 port map ( O=>T_190, 
            I3=>T_434, 
            I2=>T_435, 
            I1=>T_436, 
            I0=>LED14Q );
  GATE_T_191_I_1:   AND4 port map ( O=>T_191, 
            I3=>T_430, 
            I2=>T_431, 
            I1=>T_432, 
            I0=>T_433 );
  GATE_T_192_I_1:   INV port map ( I0=>LED8Q, 
            O=>GATE_T_192_A );
  GATE_T_192_I_2:   INV port map ( I0=>Q0Q, 
            O=>GATE_T_192_B );
  GATE_T_192_I_3:   AND3 port map ( O=>T_192, 
            I0=>Q3Q, 
            I2=>GATE_T_192_A, 
            I1=>GATE_T_192_B );
  GATE_T_193_I_1:   INV port map ( I0=>LED8Q, 
            O=>GATE_T_193_A );
  GATE_T_193_I_2:   AND3 port map ( O=>T_193, 
            I2=>Q1Q, 
            I1=>Q3Q, 
            I0=>GATE_T_193_A );
  GATE_T_194_I_1:   INV port map ( I0=>LED8Q, 
            O=>GATE_T_194_A );
  GATE_T_194_I_2:   AND3 port map ( O=>T_194, 
            I2=>Q2Q, 
            I1=>Q3Q, 
            I0=>GATE_T_194_A );
  GATE_T_195_I_1:   AND2 port map ( O=>T_195, 
            I1=>Q0Q, 
            I0=>GATE_T_195_A );
  GATE_T_195_I_2:   INV port map ( O=>GATE_T_195_A, 
            I0=>Q1Q );
  GATE_T_196_I_1:   AND2 port map ( O=>T_196, 
            I1=>Q3Q, 
            I0=>GATE_T_196_A );
  GATE_T_196_I_2:   INV port map ( O=>GATE_T_196_A, 
            I0=>Q2Q );
  GATE_T_197_I_1:   OR2 port map ( O=>T_197, 
            I1=>T_25, 
            I0=>T_24 );
  GATE_T_198_I_1:   OR2 port map ( O=>T_198, 
            I1=>T_23, 
            I0=>T_22 );
  GATE_T_199_I_1:   OR2 port map ( O=>T_199, 
            I1=>T_21, 
            I0=>T_20 );
  GATE_T_200_I_1:   AND2 port map ( O=>T_200, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_201_I_1:   AND2 port map ( O=>T_201, 
            I1=>P2Q, 
            I0=>GATE_T_201_A );
  GATE_T_201_I_2:   INV port map ( O=>GATE_T_201_A, 
            I0=>P3Q );
  GATE_T_202_I_1:   AND2 port map ( O=>T_202, 
            I1=>Q2Q, 
            I0=>Q3Q );
  GATE_T_203_I_1:   AND2 port map ( O=>T_203, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_204_I_1:   AND2 port map ( O=>T_204, 
            I1=>P2Q, 
            I0=>GATE_T_204_A );
  GATE_T_204_I_2:   INV port map ( O=>GATE_T_204_A, 
            I0=>P3Q );
  GATE_T_205_I_1:   AND2 port map ( O=>T_205, 
            I1=>Q1Q, 
            I0=>Q3Q );
  GATE_T_206_I_1:   AND2 port map ( O=>T_206, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_207_I_1:   AND2 port map ( O=>T_207, 
            I1=>P2Q, 
            I0=>GATE_T_207_A );
  GATE_T_207_I_2:   INV port map ( O=>GATE_T_207_A, 
            I0=>P3Q );
  GATE_T_208_I_1:   AND2 port map ( O=>T_208, 
            I1=>Q3Q, 
            I0=>GATE_T_208_A );
  GATE_T_208_I_2:   INV port map ( O=>GATE_T_208_A, 
            I0=>Q0Q );
  GATE_T_209_I_1:   NOR2 port map ( O=>T_209, 
            I1=>P1Q, 
            I0=>P2Q );
  GATE_T_210_I_1:   AND2 port map ( O=>T_210, 
            I1=>Q0Q, 
            I0=>GATE_T_210_A );
  GATE_T_210_I_2:   INV port map ( O=>GATE_T_210_A, 
            I0=>Q1Q );
  GATE_T_211_I_1:   AND2 port map ( O=>T_211, 
            I1=>Q3Q, 
            I0=>GATE_T_211_A );
  GATE_T_211_I_2:   INV port map ( O=>GATE_T_211_A, 
            I0=>Q2Q );
  GATE_T_212_I_1:   AND2 port map ( O=>T_212, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_213_I_1:   AND2 port map ( O=>T_213, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_214_I_1:   AND2 port map ( O=>T_214, 
            I1=>Q0Q, 
            I0=>GATE_T_214_A );
  GATE_T_214_I_2:   INV port map ( O=>GATE_T_214_A, 
            I0=>Q1Q );
  GATE_T_215_I_1:   AND2 port map ( O=>T_215, 
            I1=>Q3Q, 
            I0=>GATE_T_215_A );
  GATE_T_215_I_2:   INV port map ( O=>GATE_T_215_A, 
            I0=>Q2Q );
  GATE_T_216_I_1:   AND2 port map ( O=>T_216, 
            I1=>P1Q, 
            I0=>GATE_T_216_A );
  GATE_T_216_I_2:   INV port map ( O=>GATE_T_216_A, 
            I0=>P0Q );
  GATE_T_217_I_1:   AND2 port map ( O=>T_217, 
            I1=>P3Q, 
            I0=>GATE_T_217_A );
  GATE_T_217_I_2:   INV port map ( O=>GATE_T_217_A, 
            I0=>P2Q );
  GATE_T_218_I_1:   AND2 port map ( O=>T_218, 
            I1=>Q0Q, 
            I0=>GATE_T_218_A );
  GATE_T_218_I_2:   INV port map ( O=>GATE_T_218_A, 
            I0=>Q1Q );
  GATE_T_219_I_1:   AND2 port map ( O=>T_219, 
            I1=>Q3Q, 
            I0=>GATE_T_219_A );
  GATE_T_219_I_2:   INV port map ( O=>GATE_T_219_A, 
            I0=>Q2Q );
  GATE_T_220_I_1:   AND2 port map ( O=>T_220, 
            I1=>P0Q, 
            I0=>P3Q );
  GATE_T_221_I_1:   AND2 port map ( O=>T_221, 
            I1=>Q0Q, 
            I0=>GATE_T_221_A );
  GATE_T_221_I_2:   INV port map ( O=>GATE_T_221_A, 
            I0=>Q1Q );
  GATE_T_222_I_1:   AND2 port map ( O=>T_222, 
            I1=>Q3Q, 
            I0=>GATE_T_222_A );
  GATE_T_222_I_2:   INV port map ( O=>GATE_T_222_A, 
            I0=>Q2Q );
  GATE_T_223_I_1:   OR3 port map ( O=>T_223, 
            I2=>T_34, 
            I1=>T_33, 
            I0=>T_35 );
  GATE_T_224_I_1:   OR3 port map ( O=>T_224, 
            I2=>T_31, 
            I1=>T_30, 
            I0=>T_32 );
  GATE_T_225_I_1:   OR3 port map ( O=>T_225, 
            I2=>T_28, 
            I1=>T_27, 
            I0=>T_29 );
  GATE_T_226_I_1:   NOR2 port map ( O=>T_226, 
            I1=>P1Q, 
            I0=>P2Q );
  GATE_T_227_I_1:   AND2 port map ( O=>T_227, 
            I1=>P3Q, 
            I0=>Q3Q );
  GATE_T_228_I_1:   AND2 port map ( O=>T_228, 
            I1=>P1Q, 
            I0=>GATE_T_228_A );
  GATE_T_228_I_2:   INV port map ( O=>GATE_T_228_A, 
            I0=>P2Q );
  GATE_T_229_I_1:   NOR2 port map ( O=>T_229, 
            I1=>P3Q, 
            I0=>Q3Q );
  GATE_T_230_I_1:   AND2 port map ( O=>T_230, 
            I1=>P1Q, 
            I0=>GATE_T_230_A );
  GATE_T_230_I_2:   INV port map ( O=>GATE_T_230_A, 
            I0=>P2Q );
  GATE_T_231_I_1:   AND2 port map ( O=>T_231, 
            I1=>Q2Q, 
            I0=>GATE_T_231_A );
  GATE_T_231_I_2:   INV port map ( O=>GATE_T_231_A, 
            I0=>P3Q );
  GATE_T_232_I_1:   AND2 port map ( O=>T_232, 
            I1=>P1Q, 
            I0=>GATE_T_232_A );
  GATE_T_232_I_2:   INV port map ( O=>GATE_T_232_A, 
            I0=>P2Q );
  GATE_T_233_I_1:   AND2 port map ( O=>T_233, 
            I1=>Q1Q, 
            I0=>GATE_T_233_A );
  GATE_T_233_I_2:   INV port map ( O=>GATE_T_233_A, 
            I0=>P3Q );
  GATE_T_234_I_1:   AND2 port map ( O=>T_234, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_235_I_1:   AND2 port map ( O=>T_235, 
            I1=>Q0Q, 
            I0=>GATE_T_235_A );
  GATE_T_235_I_2:   INV port map ( O=>GATE_T_235_A, 
            I0=>Q1Q );
  GATE_T_236_I_1:   AND2 port map ( O=>T_236, 
            I1=>Q3Q, 
            I0=>GATE_T_236_A );
  GATE_T_236_I_2:   INV port map ( O=>GATE_T_236_A, 
            I0=>Q2Q );
  GATE_T_237_I_1:   AND2 port map ( O=>T_237, 
            I1=>P1Q, 
            I0=>P3Q );
  GATE_T_238_I_1:   AND2 port map ( O=>T_238, 
            I1=>Q0Q, 
            I0=>GATE_T_238_A );
  GATE_T_238_I_2:   INV port map ( O=>GATE_T_238_A, 
            I0=>Q1Q );
  GATE_T_239_I_1:   AND2 port map ( O=>T_239, 
            I1=>Q3Q, 
            I0=>GATE_T_239_A );
  GATE_T_239_I_2:   INV port map ( O=>GATE_T_239_A, 
            I0=>Q2Q );
  GATE_T_240_I_1:   NOR2 port map ( O=>T_240, 
            I1=>P1Q, 
            I0=>P2Q );
  GATE_T_241_I_1:   NOR2 port map ( O=>T_241, 
            I1=>P3Q, 
            I0=>Q1Q );
  GATE_T_242_I_1:   AND2 port map ( O=>T_242, 
            I1=>Q3Q, 
            I0=>GATE_T_242_A );
  GATE_T_242_I_2:   INV port map ( O=>GATE_T_242_A, 
            I0=>Q2Q );
  GATE_T_243_I_1:   OR2 port map ( O=>T_243, 
            I1=>T_44, 
            I0=>T_43 );
  GATE_T_244_I_1:   OR2 port map ( O=>T_244, 
            I1=>T_42, 
            I0=>T_41 );
  GATE_T_245_I_1:   OR2 port map ( O=>T_245, 
            I1=>T_40, 
            I0=>T_39 );
  GATE_T_246_I_1:   OR2 port map ( O=>T_246, 
            I1=>T_38, 
            I0=>T_37 );
  GATE_T_247_I_1:   AND2 port map ( O=>T_247, 
            I1=>P2Q, 
            I0=>GATE_T_247_A );
  GATE_T_247_I_2:   INV port map ( O=>GATE_T_247_A, 
            I0=>P1Q );
  GATE_T_248_I_1:   NOR2 port map ( O=>T_248, 
            I1=>P3Q, 
            I0=>Q3Q );
  GATE_T_249_I_1:   AND2 port map ( O=>T_249, 
            I1=>P2Q, 
            I0=>GATE_T_249_A );
  GATE_T_249_I_2:   INV port map ( O=>GATE_T_249_A, 
            I0=>P1Q );
  GATE_T_250_I_1:   AND2 port map ( O=>T_250, 
            I1=>Q2Q, 
            I0=>GATE_T_250_A );
  GATE_T_250_I_2:   INV port map ( O=>GATE_T_250_A, 
            I0=>P3Q );
  GATE_T_251_I_1:   AND2 port map ( O=>T_251, 
            I1=>P2Q, 
            I0=>GATE_T_251_A );
  GATE_T_251_I_2:   INV port map ( O=>GATE_T_251_A, 
            I0=>P1Q );
  GATE_T_252_I_1:   AND2 port map ( O=>T_252, 
            I1=>Q1Q, 
            I0=>GATE_T_252_A );
  GATE_T_252_I_2:   INV port map ( O=>GATE_T_252_A, 
            I0=>P3Q );
  GATE_T_253_I_1:   NOR2 port map ( O=>T_253, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_254_I_1:   AND2 port map ( O=>T_254, 
            I1=>P3Q, 
            I0=>GATE_T_254_A );
  GATE_T_254_I_2:   INV port map ( O=>GATE_T_254_A, 
            I0=>P2Q );
  GATE_T_255_I_1:   AND2 port map ( O=>T_255, 
            I1=>Q2Q, 
            I0=>Q3Q );
  GATE_T_256_I_1:   NOR2 port map ( O=>T_256, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_257_I_1:   AND2 port map ( O=>T_257, 
            I1=>P3Q, 
            I0=>GATE_T_257_A );
  GATE_T_257_I_2:   INV port map ( O=>GATE_T_257_A, 
            I0=>P2Q );
  GATE_T_258_I_1:   AND2 port map ( O=>T_258, 
            I1=>Q1Q, 
            I0=>Q3Q );
  GATE_T_259_I_1:   NOR2 port map ( O=>T_259, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_260_I_1:   AND2 port map ( O=>T_260, 
            I1=>P3Q, 
            I0=>GATE_T_260_A );
  GATE_T_260_I_2:   INV port map ( O=>GATE_T_260_A, 
            I0=>P2Q );
  GATE_T_261_I_1:   AND2 port map ( O=>T_261, 
            I1=>Q3Q, 
            I0=>GATE_T_261_A );
  GATE_T_261_I_2:   INV port map ( O=>GATE_T_261_A, 
            I0=>Q0Q );
  GATE_T_262_I_1:   AND2 port map ( O=>T_262, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_263_I_1:   AND2 port map ( O=>T_263, 
            I1=>Q0Q, 
            I0=>GATE_T_263_A );
  GATE_T_263_I_2:   INV port map ( O=>GATE_T_263_A, 
            I0=>Q1Q );
  GATE_T_264_I_1:   AND2 port map ( O=>T_264, 
            I1=>Q3Q, 
            I0=>GATE_T_264_A );
  GATE_T_264_I_2:   INV port map ( O=>GATE_T_264_A, 
            I0=>Q2Q );
  GATE_T_265_I_1:   AND2 port map ( O=>T_265, 
            I1=>P1Q, 
            I0=>GATE_T_265_A );
  GATE_T_265_I_2:   INV port map ( O=>GATE_T_265_A, 
            I0=>P2Q );
  GATE_T_266_I_1:   NOR2 port map ( O=>T_266, 
            I1=>P3Q, 
            I0=>Q1Q );
  GATE_T_267_I_1:   AND2 port map ( O=>T_267, 
            I1=>Q3Q, 
            I0=>GATE_T_267_A );
  GATE_T_267_I_2:   INV port map ( O=>GATE_T_267_A, 
            I0=>Q2Q );
  GATE_T_268_I_1:   OR2 port map ( O=>T_268, 
            I1=>T_50, 
            I0=>T_49 );
  GATE_T_269_I_1:   OR2 port map ( O=>T_269, 
            I1=>T_48, 
            I0=>T_47 );
  GATE_T_270_I_1:   OR2 port map ( O=>T_270, 
            I1=>T_46, 
            I0=>T_45 );
  GATE_T_271_I_1:   AND2 port map ( O=>T_271, 
            I1=>Q2Q, 
            I0=>GATE_T_271_A );
  GATE_T_271_I_2:   INV port map ( O=>GATE_T_271_A, 
            I0=>Q1Q );
  GATE_T_272_I_1:   NOR2 port map ( O=>T_272, 
            I1=>Q3Q, 
            I0=>X5Q );
  GATE_T_273_I_1:   AND2 port map ( O=>T_273, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_274_I_1:   NOR2 port map ( O=>T_274, 
            I1=>Q3Q, 
            I0=>X6Q );
  GATE_T_275_I_1:   AND2 port map ( O=>T_275, 
            I1=>Q2Q, 
            I0=>GATE_T_275_A );
  GATE_T_275_I_2:   INV port map ( O=>GATE_T_275_A, 
            I0=>Q1Q );
  GATE_T_276_I_1:   NOR2 port map ( O=>T_276, 
            I1=>Q3Q, 
            I0=>X4Q );
  GATE_T_277_I_1:   AND2 port map ( O=>T_277, 
            I1=>Q0Q, 
            I0=>Q1Q );
  GATE_T_278_I_1:   AND2 port map ( O=>T_278, 
            I1=>X3Q, 
            I0=>GATE_T_278_A );
  GATE_T_278_I_2:   INV port map ( O=>GATE_T_278_A, 
            I0=>Q3Q );
  GATE_T_279_I_1:   AND2 port map ( O=>T_279, 
            I1=>Q0Q, 
            I0=>Q1Q );
  GATE_T_280_I_1:   AND2 port map ( O=>T_280, 
            I1=>Q2Q, 
            I0=>GATE_T_280_A );
  GATE_T_280_I_2:   INV port map ( O=>GATE_T_280_A, 
            I0=>Q3Q );
  GATE_T_281_I_1:   AND2 port map ( O=>T_281, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_282_I_1:   AND2 port map ( O=>T_282, 
            I1=>Q1Q, 
            I0=>GATE_T_282_A );
  GATE_T_282_I_2:   INV port map ( O=>GATE_T_282_A, 
            I0=>Q2Q );
  GATE_T_283_I_1:   NOR2 port map ( O=>T_283, 
            I1=>Q3Q, 
            I0=>X3Q );
  GATE_T_284_I_1:   OR2 port map ( O=>T_284, 
            I1=>T_56, 
            I0=>T_55 );
  GATE_T_285_I_1:   OR2 port map ( O=>T_285, 
            I1=>T_54, 
            I0=>T_53 );
  GATE_T_286_I_1:   OR2 port map ( O=>T_286, 
            I1=>T_52, 
            I0=>T_51 );
  GATE_T_287_I_1:   OR2 port map ( O=>T_287, 
            I1=>T_60, 
            I0=>T_59 );
  GATE_T_288_I_1:   OR2 port map ( O=>T_288, 
            I1=>T_58, 
            I0=>T_57 );
  GATE_T_289_I_1:   AND2 port map ( O=>T_289, 
            I1=>LED15Q, 
            I0=>GATE_T_289_A );
  GATE_T_289_I_2:   INV port map ( O=>GATE_T_289_A, 
            I0=>LED14Q );
  GATE_T_290_I_1:   AND2 port map ( O=>T_290, 
            I1=>Q0Q, 
            I0=>GATE_T_290_A );
  GATE_T_290_I_2:   INV port map ( O=>GATE_T_290_A, 
            I0=>Q1Q );
  GATE_T_291_I_1:   AND2 port map ( O=>T_291, 
            I1=>Q3Q, 
            I0=>GATE_T_291_A );
  GATE_T_291_I_2:   INV port map ( O=>GATE_T_291_A, 
            I0=>Q2Q );
  GATE_T_292_I_1:   AND2 port map ( O=>T_292, 
            I1=>LED14Q, 
            I0=>GATE_T_292_A );
  GATE_T_292_I_2:   INV port map ( O=>GATE_T_292_A, 
            I0=>LED15Q );
  GATE_T_293_I_1:   AND2 port map ( O=>T_293, 
            I1=>Q0Q, 
            I0=>GATE_T_293_A );
  GATE_T_293_I_2:   INV port map ( O=>GATE_T_293_A, 
            I0=>Q1Q );
  GATE_T_294_I_1:   AND2 port map ( O=>T_294, 
            I1=>Q3Q, 
            I0=>GATE_T_294_A );
  GATE_T_294_I_2:   INV port map ( O=>GATE_T_294_A, 
            I0=>Q2Q );
  GATE_T_295_I_1:   AND2 port map ( O=>T_295, 
            I1=>LED14Q, 
            I0=>GATE_T_295_A );
  GATE_T_295_I_2:   INV port map ( O=>GATE_T_295_A, 
            I0=>LED13Q );
  GATE_T_296_I_1:   AND2 port map ( O=>T_296, 
            I1=>Q0Q, 
            I0=>GATE_T_296_A );
  GATE_T_296_I_2:   INV port map ( O=>GATE_T_296_A, 
            I0=>Q1Q );
  GATE_T_297_I_1:   AND2 port map ( O=>T_297, 
            I1=>Q3Q, 
            I0=>GATE_T_297_A );
  GATE_T_297_I_2:   INV port map ( O=>GATE_T_297_A, 
            I0=>Q2Q );
  GATE_T_298_I_1:   AND2 port map ( O=>T_298, 
            I1=>LED13Q, 
            I0=>GATE_T_298_A );
  GATE_T_298_I_2:   INV port map ( O=>GATE_T_298_A, 
            I0=>LED14Q );
  GATE_T_299_I_1:   AND2 port map ( O=>T_299, 
            I1=>Q0Q, 
            I0=>GATE_T_299_A );
  GATE_T_299_I_2:   INV port map ( O=>GATE_T_299_A, 
            I0=>Q1Q );
  GATE_T_300_I_1:   AND2 port map ( O=>T_300, 
            I1=>Q3Q, 
            I0=>GATE_T_300_A );
  GATE_T_300_I_2:   INV port map ( O=>GATE_T_300_A, 
            I0=>Q2Q );
  GATE_T_301_I_1:   AND2 port map ( O=>T_301, 
            I1=>LED13Q, 
            I0=>GATE_T_301_A );
  GATE_T_301_I_2:   INV port map ( O=>GATE_T_301_A, 
            I0=>LED12Q );
  GATE_T_302_I_1:   AND2 port map ( O=>T_302, 
            I1=>Q0Q, 
            I0=>GATE_T_302_A );
  GATE_T_302_I_2:   INV port map ( O=>GATE_T_302_A, 
            I0=>Q1Q );
  GATE_T_303_I_1:   AND2 port map ( O=>T_303, 
            I1=>Q3Q, 
            I0=>GATE_T_303_A );
  GATE_T_303_I_2:   INV port map ( O=>GATE_T_303_A, 
            I0=>Q2Q );
  GATE_T_304_I_1:   AND2 port map ( O=>T_304, 
            I1=>LED12Q, 
            I0=>GATE_T_304_A );
  GATE_T_304_I_2:   INV port map ( O=>GATE_T_304_A, 
            I0=>LED13Q );
  GATE_T_305_I_1:   AND2 port map ( O=>T_305, 
            I1=>Q0Q, 
            I0=>GATE_T_305_A );
  GATE_T_305_I_2:   INV port map ( O=>GATE_T_305_A, 
            I0=>Q1Q );
  GATE_T_306_I_1:   AND2 port map ( O=>T_306, 
            I1=>Q3Q, 
            I0=>GATE_T_306_A );
  GATE_T_306_I_2:   INV port map ( O=>GATE_T_306_A, 
            I0=>Q2Q );
  GATE_T_307_I_1:   AND2 port map ( O=>T_307, 
            I1=>LED12Q, 
            I0=>GATE_T_307_A );
  GATE_T_307_I_2:   INV port map ( O=>GATE_T_307_A, 
            I0=>LED11Q );
  GATE_T_308_I_1:   AND2 port map ( O=>T_308, 
            I1=>Q0Q, 
            I0=>GATE_T_308_A );
  GATE_T_308_I_2:   INV port map ( O=>GATE_T_308_A, 
            I0=>Q1Q );
  GATE_T_309_I_1:   AND2 port map ( O=>T_309, 
            I1=>Q3Q, 
            I0=>GATE_T_309_A );
  GATE_T_309_I_2:   INV port map ( O=>GATE_T_309_A, 
            I0=>Q2Q );
  GATE_T_310_I_1:   AND2 port map ( O=>T_310, 
            I1=>LED11Q, 
            I0=>GATE_T_310_A );
  GATE_T_310_I_2:   INV port map ( O=>GATE_T_310_A, 
            I0=>LED12Q );
  GATE_T_311_I_1:   AND2 port map ( O=>T_311, 
            I1=>Q0Q, 
            I0=>GATE_T_311_A );
  GATE_T_311_I_2:   INV port map ( O=>GATE_T_311_A, 
            I0=>Q1Q );
  GATE_T_312_I_1:   AND2 port map ( O=>T_312, 
            I1=>Q3Q, 
            I0=>GATE_T_312_A );
  GATE_T_312_I_2:   INV port map ( O=>GATE_T_312_A, 
            I0=>Q2Q );
  GATE_T_313_I_1:   AND2 port map ( O=>T_313, 
            I1=>LED11Q, 
            I0=>GATE_T_313_A );
  GATE_T_313_I_2:   INV port map ( O=>GATE_T_313_A, 
            I0=>LED10Q );
  GATE_T_314_I_1:   AND2 port map ( O=>T_314, 
            I1=>Q0Q, 
            I0=>GATE_T_314_A );
  GATE_T_314_I_2:   INV port map ( O=>GATE_T_314_A, 
            I0=>Q1Q );
  GATE_T_315_I_1:   AND2 port map ( O=>T_315, 
            I1=>Q3Q, 
            I0=>GATE_T_315_A );
  GATE_T_315_I_2:   INV port map ( O=>GATE_T_315_A, 
            I0=>Q2Q );
  GATE_T_316_I_1:   AND2 port map ( O=>T_316, 
            I1=>LED10Q, 
            I0=>GATE_T_316_A );
  GATE_T_316_I_2:   INV port map ( O=>GATE_T_316_A, 
            I0=>LED11Q );
  GATE_T_317_I_1:   AND2 port map ( O=>T_317, 
            I1=>Q0Q, 
            I0=>GATE_T_317_A );
  GATE_T_317_I_2:   INV port map ( O=>GATE_T_317_A, 
            I0=>Q1Q );
  GATE_T_318_I_1:   AND2 port map ( O=>T_318, 
            I1=>Q3Q, 
            I0=>GATE_T_318_A );
  GATE_T_318_I_2:   INV port map ( O=>GATE_T_318_A, 
            I0=>Q2Q );
  GATE_T_319_I_1:   AND2 port map ( O=>T_319, 
            I1=>LED10Q, 
            I0=>GATE_T_319_A );
  GATE_T_319_I_2:   INV port map ( O=>GATE_T_319_A, 
            I0=>LED9Q );
  GATE_T_320_I_1:   AND2 port map ( O=>T_320, 
            I1=>Q0Q, 
            I0=>GATE_T_320_A );
  GATE_T_320_I_2:   INV port map ( O=>GATE_T_320_A, 
            I0=>Q1Q );
  GATE_T_321_I_1:   AND2 port map ( O=>T_321, 
            I1=>Q3Q, 
            I0=>GATE_T_321_A );
  GATE_T_321_I_2:   INV port map ( O=>GATE_T_321_A, 
            I0=>Q2Q );
  GATE_T_322_I_1:   AND2 port map ( O=>T_322, 
            I1=>LED9Q, 
            I0=>GATE_T_322_A );
  GATE_T_322_I_2:   INV port map ( O=>GATE_T_322_A, 
            I0=>LED10Q );
  GATE_T_323_I_1:   AND2 port map ( O=>T_323, 
            I1=>Q0Q, 
            I0=>GATE_T_323_A );
  GATE_T_323_I_2:   INV port map ( O=>GATE_T_323_A, 
            I0=>Q1Q );
  GATE_T_324_I_1:   AND2 port map ( O=>T_324, 
            I1=>Q3Q, 
            I0=>GATE_T_324_A );
  GATE_T_324_I_2:   INV port map ( O=>GATE_T_324_A, 
            I0=>Q2Q );
  GATE_T_325_I_1:   AND2 port map ( O=>T_325, 
            I1=>LED9Q, 
            I0=>GATE_T_325_A );
  GATE_T_325_I_2:   INV port map ( O=>GATE_T_325_A, 
            I0=>LED8Q );
  GATE_T_326_I_1:   AND2 port map ( O=>T_326, 
            I1=>Q0Q, 
            I0=>GATE_T_326_A );
  GATE_T_326_I_2:   INV port map ( O=>GATE_T_326_A, 
            I0=>Q1Q );
  GATE_T_327_I_1:   AND2 port map ( O=>T_327, 
            I1=>Q3Q, 
            I0=>GATE_T_327_A );
  GATE_T_327_I_2:   INV port map ( O=>GATE_T_327_A, 
            I0=>Q2Q );
  GATE_T_328_I_1:   AND2 port map ( O=>T_328, 
            I1=>LED8Q, 
            I0=>GATE_T_328_A );
  GATE_T_328_I_2:   INV port map ( O=>GATE_T_328_A, 
            I0=>LED9Q );
  GATE_T_329_I_1:   AND2 port map ( O=>T_329, 
            I1=>Q0Q, 
            I0=>GATE_T_329_A );
  GATE_T_329_I_2:   INV port map ( O=>GATE_T_329_A, 
            I0=>Q1Q );
  GATE_T_330_I_1:   AND2 port map ( O=>T_330, 
            I1=>Q3Q, 
            I0=>GATE_T_330_A );
  GATE_T_330_I_2:   INV port map ( O=>GATE_T_330_A, 
            I0=>Q2Q );
  GATE_T_331_I_1:   OR3 port map ( O=>T_331, 
            I2=>T_90, 
            I1=>T_89, 
            I0=>T_91 );
  GATE_T_332_I_1:   OR3 port map ( O=>T_332, 
            I2=>T_87, 
            I1=>T_86, 
            I0=>T_88 );
  GATE_T_333_I_1:   OR3 port map ( O=>T_333, 
            I2=>T_84, 
            I1=>T_83, 
            I0=>T_85 );
  GATE_T_334_I_1:   AND2 port map ( O=>T_334, 
            I1=>P1Q, 
            I0=>GATE_T_334_A );
  GATE_T_334_I_2:   INV port map ( O=>GATE_T_334_A, 
            I0=>P2Q );
  GATE_T_335_I_1:   NOR2 port map ( O=>T_335, 
            I1=>P3Q, 
            I0=>Q3Q );
  GATE_T_336_I_1:   AND2 port map ( O=>T_336, 
            I1=>P1Q, 
            I0=>GATE_T_336_A );
  GATE_T_336_I_2:   INV port map ( O=>GATE_T_336_A, 
            I0=>P2Q );
  GATE_T_337_I_1:   AND2 port map ( O=>T_337, 
            I1=>Q2Q, 
            I0=>GATE_T_337_A );
  GATE_T_337_I_2:   INV port map ( O=>GATE_T_337_A, 
            I0=>P3Q );
  GATE_T_338_I_1:   AND2 port map ( O=>T_338, 
            I1=>P1Q, 
            I0=>GATE_T_338_A );
  GATE_T_338_I_2:   INV port map ( O=>GATE_T_338_A, 
            I0=>P2Q );
  GATE_T_339_I_1:   AND2 port map ( O=>T_339, 
            I1=>Q1Q, 
            I0=>GATE_T_339_A );
  GATE_T_339_I_2:   INV port map ( O=>GATE_T_339_A, 
            I0=>P3Q );
  GATE_T_340_I_1:   AND2 port map ( O=>T_340, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_341_I_1:   AND2 port map ( O=>T_341, 
            I1=>Q0Q, 
            I0=>GATE_T_341_A );
  GATE_T_341_I_2:   INV port map ( O=>GATE_T_341_A, 
            I0=>Q1Q );
  GATE_T_342_I_1:   AND2 port map ( O=>T_342, 
            I1=>Q3Q, 
            I0=>GATE_T_342_A );
  GATE_T_342_I_2:   INV port map ( O=>GATE_T_342_A, 
            I0=>Q2Q );
  GATE_T_343_I_1:   AND2 port map ( O=>T_343, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_344_I_1:   AND2 port map ( O=>T_344, 
            I1=>Q0Q, 
            I0=>GATE_T_344_A );
  GATE_T_344_I_2:   INV port map ( O=>GATE_T_344_A, 
            I0=>Q1Q );
  GATE_T_345_I_1:   AND2 port map ( O=>T_345, 
            I1=>Q3Q, 
            I0=>GATE_T_345_A );
  GATE_T_345_I_2:   INV port map ( O=>GATE_T_345_A, 
            I0=>Q2Q );
  GATE_T_346_I_1:   AND2 port map ( O=>T_346, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_347_I_1:   AND2 port map ( O=>T_347, 
            I1=>P3Q, 
            I0=>GATE_T_347_A );
  GATE_T_347_I_2:   INV port map ( O=>GATE_T_347_A, 
            I0=>P2Q );
  GATE_T_348_I_1:   AND2 port map ( O=>T_348, 
            I1=>Q0Q, 
            I0=>GATE_T_348_A );
  GATE_T_348_I_2:   INV port map ( O=>GATE_T_348_A, 
            I0=>Q1Q );
  GATE_T_349_I_1:   AND2 port map ( O=>T_349, 
            I1=>Q3Q, 
            I0=>GATE_T_349_A );
  GATE_T_349_I_2:   INV port map ( O=>GATE_T_349_A, 
            I0=>Q2Q );
  GATE_T_350_I_1:   NOR2 port map ( O=>T_350, 
            I1=>P0Q, 
            I0=>P1Q );
  GATE_T_351_I_1:   NOR2 port map ( O=>T_351, 
            I1=>P2Q, 
            I0=>P3Q );
  GATE_T_352_I_1:   NOR2 port map ( O=>T_352, 
            I1=>Q0Q, 
            I0=>Q1Q );
  GATE_T_353_I_1:   AND2 port map ( O=>T_353, 
            I1=>Q3Q, 
            I0=>GATE_T_353_A );
  GATE_T_353_I_2:   INV port map ( O=>GATE_T_353_A, 
            I0=>Q2Q );
  GATE_T_354_I_1:   OR2 port map ( O=>T_354, 
            I1=>T_128, 
            I0=>T_127 );
  GATE_T_355_I_1:   OR2 port map ( O=>T_355, 
            I1=>T_125, 
            I0=>T_124 );
  GATE_T_356_I_1:   OR2 port map ( O=>T_356, 
            I1=>T_123, 
            I0=>T_122 );
  GATE_T_357_I_1:   OR3 port map ( O=>T_357, 
            I2=>T_356, 
            I1=>T_126, 
            I0=>T_355 );
  GATE_T_358_I_1:   OR2 port map ( O=>T_358, 
            I1=>T_120, 
            I0=>T_119 );
  GATE_T_359_I_1:   OR2 port map ( O=>T_359, 
            I1=>T_118, 
            I0=>T_117 );
  GATE_T_360_I_1:   OR3 port map ( O=>T_360, 
            I2=>T_359, 
            I1=>T_121, 
            I0=>T_358 );
  GATE_T_361_I_1:   OR2 port map ( O=>T_361, 
            I1=>T_115, 
            I0=>T_114 );
  GATE_T_362_I_1:   OR2 port map ( O=>T_362, 
            I1=>T_113, 
            I0=>T_112 );
  GATE_T_363_I_1:   OR3 port map ( O=>T_363, 
            I2=>T_362, 
            I1=>T_116, 
            I0=>T_361 );
  GATE_T_364_I_1:   AND2 port map ( O=>T_364, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_365_I_1:   AND2 port map ( O=>T_365, 
            I1=>X6Q, 
            I0=>GATE_T_365_A );
  GATE_T_365_I_2:   INV port map ( O=>GATE_T_365_A, 
            I0=>Q3Q );
  GATE_T_366_I_1:   AND2 port map ( O=>T_366, 
            I1=>Q0Q, 
            I0=>Q2Q );
  GATE_T_367_I_1:   AND2 port map ( O=>T_367, 
            I1=>X5Q, 
            I0=>GATE_T_367_A );
  GATE_T_367_I_2:   INV port map ( O=>GATE_T_367_A, 
            I0=>Q3Q );
  GATE_T_368_I_1:   AND2 port map ( O=>T_368, 
            I1=>Q0Q, 
            I0=>Q1Q );
  GATE_T_369_I_1:   AND2 port map ( O=>T_369, 
            I1=>X3Q, 
            I0=>GATE_T_369_A );
  GATE_T_369_I_2:   INV port map ( O=>GATE_T_369_A, 
            I0=>Q3Q );
  GATE_T_370_I_1:   AND2 port map ( O=>T_370, 
            I1=>Q0Q, 
            I0=>GATE_T_370_A );
  GATE_T_370_I_2:   INV port map ( O=>GATE_T_370_A, 
            I0=>Q1Q );
  GATE_T_371_I_1:   AND2 port map ( O=>T_371, 
            I1=>X1Q, 
            I0=>GATE_T_371_A );
  GATE_T_371_I_2:   INV port map ( O=>GATE_T_371_A, 
            I0=>Q2Q );
  GATE_T_372_I_1:   AND2 port map ( O=>T_372, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_373_I_1:   NOR2 port map ( O=>T_373, 
            I1=>Q3Q, 
            I0=>X6Q );
  GATE_T_374_I_1:   AND2 port map ( O=>T_374, 
            I1=>Q0Q, 
            I0=>Q2Q );
  GATE_T_375_I_1:   NOR2 port map ( O=>T_375, 
            I1=>Q3Q, 
            I0=>X5Q );
  GATE_T_376_I_1:   AND2 port map ( O=>T_376, 
            I1=>Q0Q, 
            I0=>Q1Q );
  GATE_T_377_I_1:   NOR2 port map ( O=>T_377, 
            I1=>Q3Q, 
            I0=>X3Q );
  GATE_T_378_I_1:   AND2 port map ( O=>T_378, 
            I1=>Q0Q, 
            I0=>GATE_T_378_A );
  GATE_T_378_I_2:   INV port map ( O=>GATE_T_378_A, 
            I0=>Q1Q );
  GATE_T_379_I_1:   NOR2 port map ( O=>T_379, 
            I1=>Q2Q, 
            I0=>X1Q );
  GATE_T_380_I_1:   AND2 port map ( O=>T_380, 
            I1=>S2_NOPIN, 
            I0=>GATE_T_380_A );
  GATE_T_380_I_2:   INV port map ( O=>GATE_T_380_A, 
            I0=>Q0Q );
  GATE_T_381_I_1:   AND2 port map ( O=>T_381, 
            I1=>Q1Q, 
            I0=>GATE_T_381_A );
  GATE_T_381_I_2:   INV port map ( O=>GATE_T_381_A, 
            I0=>Q2Q );
  GATE_T_382_I_1:   AND2 port map ( O=>T_382, 
            I1=>X2Q, 
            I0=>GATE_T_382_A );
  GATE_T_382_I_2:   INV port map ( O=>GATE_T_382_A, 
            I0=>Q3Q );
  GATE_T_383_I_1:   AND2 port map ( O=>T_383, 
            I1=>S2_NOPIN, 
            I0=>GATE_T_383_A );
  GATE_T_383_I_2:   INV port map ( O=>GATE_T_383_A, 
            I0=>Q0Q );
  GATE_T_384_I_1:   AND2 port map ( O=>T_384, 
            I1=>Q2Q, 
            I0=>GATE_T_384_A );
  GATE_T_384_I_2:   INV port map ( O=>GATE_T_384_A, 
            I0=>Q1Q );
  GATE_T_385_I_1:   AND2 port map ( O=>T_385, 
            I1=>X4Q, 
            I0=>GATE_T_385_A );
  GATE_T_385_I_2:   INV port map ( O=>GATE_T_385_A, 
            I0=>Q3Q );
  GATE_T_386_I_1:   AND2 port map ( O=>T_386, 
            I1=>S2_NOPIN, 
            I0=>GATE_T_386_A );
  GATE_T_386_I_2:   INV port map ( O=>GATE_T_386_A, 
            I0=>Q0Q );
  GATE_T_387_I_1:   NOR2 port map ( O=>T_387, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_388_I_1:   AND2 port map ( O=>T_388, 
            I1=>X0Q, 
            I0=>GATE_T_388_A );
  GATE_T_388_I_2:   INV port map ( O=>GATE_T_388_A, 
            I0=>Q3Q );
  GATE_T_389_I_1:   NOR2 port map ( O=>T_389, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_390_I_1:   AND2 port map ( O=>T_390, 
            I1=>Q1Q, 
            I0=>GATE_T_390_A );
  GATE_T_390_I_2:   INV port map ( O=>GATE_T_390_A, 
            I0=>Q2Q );
  GATE_T_391_I_1:   NOR2 port map ( O=>T_391, 
            I1=>Q3Q, 
            I0=>X2Q );
  GATE_T_392_I_1:   NOR2 port map ( O=>T_392, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_393_I_1:   AND2 port map ( O=>T_393, 
            I1=>Q2Q, 
            I0=>GATE_T_393_A );
  GATE_T_393_I_2:   INV port map ( O=>GATE_T_393_A, 
            I0=>Q1Q );
  GATE_T_394_I_1:   NOR2 port map ( O=>T_394, 
            I1=>Q3Q, 
            I0=>X4Q );
  GATE_T_395_I_1:   NOR2 port map ( O=>T_395, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_396_I_1:   NOR2 port map ( O=>T_396, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_397_I_1:   NOR2 port map ( O=>T_397, 
            I1=>Q3Q, 
            I0=>X0Q );
  GATE_T_398_I_1:   OR2 port map ( O=>T_398, 
            I1=>T_136, 
            I0=>T_135 );
  GATE_T_399_I_1:   OR2 port map ( O=>T_399, 
            I1=>T_134, 
            I0=>T_133 );
  GATE_T_400_I_1:   OR2 port map ( O=>T_400, 
            I1=>T_132, 
            I0=>T_131 );
  GATE_T_401_I_1:   OR2 port map ( O=>T_401, 
            I1=>T_130, 
            I0=>T_129 );
  GATE_T_402_I_1:   AND2 port map ( O=>T_402, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_403_I_1:   AND2 port map ( O=>T_403, 
            I1=>Q2Q, 
            I0=>GATE_T_403_A );
  GATE_T_403_I_2:   INV port map ( O=>GATE_T_403_A, 
            I0=>Q1Q );
  GATE_T_404_I_1:   NOR2 port map ( O=>T_404, 
            I1=>Q3Q, 
            I0=>X5Q );
  GATE_T_405_I_1:   AND2 port map ( O=>T_405, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_406_I_1:   NOR2 port map ( O=>T_406, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_407_I_1:   NOR2 port map ( O=>T_407, 
            I1=>Q3Q, 
            I0=>X1Q );
  GATE_T_408_I_1:   AND2 port map ( O=>T_408, 
            I1=>S2_NOPIN, 
            I0=>GATE_T_408_A );
  GATE_T_408_I_2:   INV port map ( O=>GATE_T_408_A, 
            I0=>Q0Q );
  GATE_T_409_I_1:   AND2 port map ( O=>T_409, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_410_I_1:   NOR2 port map ( O=>T_410, 
            I1=>Q3Q, 
            I0=>X6Q );
  GATE_T_411_I_1:   AND2 port map ( O=>T_411, 
            I1=>S2_NOPIN, 
            I0=>GATE_T_411_A );
  GATE_T_411_I_2:   INV port map ( O=>GATE_T_411_A, 
            I0=>Q0Q );
  GATE_T_412_I_1:   AND2 port map ( O=>T_412, 
            I1=>Q1Q, 
            I0=>GATE_T_412_A );
  GATE_T_412_I_2:   INV port map ( O=>GATE_T_412_A, 
            I0=>Q2Q );
  GATE_T_413_I_1:   NOR2 port map ( O=>T_413, 
            I1=>Q3Q, 
            I0=>X2Q );
  GATE_T_414_I_1:   AND2 port map ( O=>T_414, 
            I1=>Q0Q, 
            I0=>GATE_T_414_A );
  GATE_T_414_I_2:   INV port map ( O=>GATE_T_414_A, 
            I0=>S2_NOPIN );
  GATE_T_415_I_1:   AND2 port map ( O=>T_415, 
            I1=>Q2Q, 
            I0=>GATE_T_415_A );
  GATE_T_415_I_2:   INV port map ( O=>GATE_T_415_A, 
            I0=>Q1Q );
  GATE_T_416_I_1:   AND2 port map ( O=>T_416, 
            I1=>X5Q, 
            I0=>GATE_T_416_A );
  GATE_T_416_I_2:   INV port map ( O=>GATE_T_416_A, 
            I0=>Q3Q );
  GATE_T_417_I_1:   AND2 port map ( O=>T_417, 
            I1=>Q0Q, 
            I0=>GATE_T_417_A );
  GATE_T_417_I_2:   INV port map ( O=>GATE_T_417_A, 
            I0=>S2_NOPIN );
  GATE_T_418_I_1:   NOR2 port map ( O=>T_418, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_419_I_1:   AND2 port map ( O=>T_419, 
            I1=>X1Q, 
            I0=>GATE_T_419_A );
  GATE_T_419_I_2:   INV port map ( O=>GATE_T_419_A, 
            I0=>Q3Q );
  GATE_T_420_I_1:   NOR2 port map ( O=>T_420, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_421_I_1:   AND2 port map ( O=>T_421, 
            I1=>Q1Q, 
            I0=>Q2Q );
  GATE_T_422_I_1:   AND2 port map ( O=>T_422, 
            I1=>X6Q, 
            I0=>GATE_T_422_A );
  GATE_T_422_I_2:   INV port map ( O=>GATE_T_422_A, 
            I0=>Q3Q );
  GATE_T_423_I_1:   NOR2 port map ( O=>T_423, 
            I1=>S2_NOPIN, 
            I0=>Q0Q );
  GATE_T_424_I_1:   AND2 port map ( O=>T_424, 
            I1=>Q1Q, 
            I0=>GATE_T_424_A );
  GATE_T_424_I_2:   INV port map ( O=>GATE_T_424_A, 
            I0=>Q2Q );
  GATE_T_425_I_1:   AND2 port map ( O=>T_425, 
            I1=>X2Q, 
            I0=>GATE_T_425_A );
  GATE_T_425_I_2:   INV port map ( O=>GATE_T_425_A, 
            I0=>Q3Q );
  GATE_T_426_I_1:   AND2 port map ( O=>T_426, 
            I1=>Q0Q, 
            I0=>GATE_T_426_A );
  GATE_T_426_I_2:   INV port map ( O=>GATE_T_426_A, 
            I0=>Q1Q );
  GATE_T_427_I_1:   AND2 port map ( O=>T_427, 
            I1=>Q3Q, 
            I0=>GATE_T_427_A );
  GATE_T_427_I_2:   INV port map ( O=>GATE_T_427_A, 
            I0=>Q2Q );
  GATE_T_428_I_1:   OR2 port map ( O=>T_428, 
            I1=>T_193, 
            I0=>T_192 );
  GATE_T_429_I_1:   OR2 port map ( O=>T_429, 
            I1=>T_191, 
            I0=>T_190 );
  GATE_T_430_I_1:   AND2 port map ( O=>T_430, 
            I1=>LED14Q, 
            I0=>LED13Q );
  GATE_T_431_I_1:   AND2 port map ( O=>T_431, 
            I1=>LED12Q, 
            I0=>LED11Q );
  GATE_T_432_I_1:   AND2 port map ( O=>T_432, 
            I1=>LED10Q, 
            I0=>LED9Q );
  GATE_T_433_I_1:   AND2 port map ( O=>T_433, 
            I1=>LED8Q, 
            I0=>GATE_T_433_A );
  GATE_T_433_I_2:   INV port map ( O=>GATE_T_433_A, 
            I0=>Q3Q );
  GATE_T_434_I_1:   AND3 port map ( O=>T_434, 
            I2=>LED12Q, 
            I1=>LED11Q, 
            I0=>LED13Q );
  GATE_T_435_I_1:   AND3 port map ( O=>T_435, 
            I2=>LED9Q, 
            I1=>LED8Q, 
            I0=>LED10Q );
  GATE_T_436_I_1:   INV port map ( I0=>Q1Q, 
            O=>GATE_T_436_A );
  GATE_T_436_I_2:   INV port map ( I0=>Q2Q, 
            O=>GATE_T_436_B );
  GATE_T_436_I_3:   AND3 port map ( O=>T_436, 
            I0=>Q0Q, 
            I2=>GATE_T_436_A, 
            I1=>GATE_T_436_B );

end NetList;
