; ModuleID = '../../src/wikisort/libwikisort.c'
source_filename = "../../src/wikisort/libwikisort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test = type { i32, i32 }
%struct.Range = type { i64, i64 }

@max_size = dso_local constant i64 400, align 8
@__const.verify_benchmark.exp = private unnamed_addr constant [400 x %struct.Test] [%struct.Test { i32 1000, i32 1 }, %struct.Test { i32 1000, i32 2 }, %struct.Test { i32 1000, i32 13 }, %struct.Test { i32 1000, i32 18 }, %struct.Test { i32 1000, i32 19 }, %struct.Test { i32 1000, i32 26 }, %struct.Test { i32 1000, i32 31 }, %struct.Test { i32 1000, i32 32 }, %struct.Test { i32 1000, i32 35 }, %struct.Test { i32 1000, i32 36 }, %struct.Test { i32 1000, i32 37 }, %struct.Test { i32 1000, i32 46 }, %struct.Test { i32 1000, i32 49 }, %struct.Test { i32 1000, i32 55 }, %struct.Test { i32 1000, i32 61 }, %struct.Test { i32 1000, i32 62 }, %struct.Test { i32 1000, i32 66 }, %struct.Test { i32 1000, i32 72 }, %struct.Test { i32 1000, i32 73 }, %struct.Test { i32 1000, i32 74 }, %struct.Test { i32 1000, i32 75 }, %struct.Test { i32 1000, i32 76 }, %struct.Test { i32 1000, i32 77 }, %struct.Test { i32 1000, i32 81 }, %struct.Test { i32 1000, i32 82 }, %struct.Test { i32 1000, i32 83 }, %struct.Test { i32 1000, i32 87 }, %struct.Test { i32 1000, i32 89 }, %struct.Test { i32 1000, i32 91 }, %struct.Test { i32 1000, i32 92 }, %struct.Test { i32 1000, i32 95 }, %struct.Test { i32 1000, i32 99 }, %struct.Test { i32 1000, i32 101 }, %struct.Test { i32 1000, i32 105 }, %struct.Test { i32 1000, i32 108 }, %struct.Test { i32 1000, i32 109 }, %struct.Test { i32 1000, i32 114 }, %struct.Test { i32 1000, i32 119 }, %struct.Test { i32 1000, i32 120 }, %struct.Test { i32 1000, i32 128 }, %struct.Test { i32 1000, i32 137 }, %struct.Test { i32 1000, i32 143 }, %struct.Test { i32 1000, i32 144 }, %struct.Test { i32 1000, i32 151 }, %struct.Test { i32 1000, i32 158 }, %struct.Test { i32 1000, i32 161 }, %struct.Test { i32 1000, i32 162 }, %struct.Test { i32 1000, i32 165 }, %struct.Test { i32 1000, i32 169 }, %struct.Test { i32 1000, i32 181 }, %struct.Test { i32 1000, i32 182 }, %struct.Test { i32 1000, i32 187 }, %struct.Test { i32 1000, i32 188 }, %struct.Test { i32 1000, i32 190 }, %struct.Test { i32 1000, i32 195 }, %struct.Test { i32 1000, i32 196 }, %struct.Test { i32 1000, i32 198 }, %struct.Test { i32 1000, i32 200 }, %struct.Test { i32 1000, i32 201 }, %struct.Test { i32 1000, i32 205 }, %struct.Test { i32 1000, i32 206 }, %struct.Test { i32 1000, i32 211 }, %struct.Test { i32 1000, i32 212 }, %struct.Test { i32 1000, i32 213 }, %struct.Test { i32 1000, i32 214 }, %struct.Test { i32 1000, i32 215 }, %struct.Test { i32 1000, i32 217 }, %struct.Test { i32 1000, i32 221 }, %struct.Test { i32 1000, i32 223 }, %struct.Test { i32 1000, i32 225 }, %struct.Test { i32 1000, i32 226 }, %struct.Test { i32 1000, i32 227 }, %struct.Test { i32 1000, i32 233 }, %struct.Test { i32 1000, i32 242 }, %struct.Test { i32 1000, i32 245 }, %struct.Test { i32 1000, i32 249 }, %struct.Test { i32 1000, i32 250 }, %struct.Test { i32 1000, i32 266 }, %struct.Test { i32 1000, i32 270 }, %struct.Test { i32 1000, i32 271 }, %struct.Test { i32 1000, i32 273 }, %struct.Test { i32 1000, i32 274 }, %struct.Test { i32 1000, i32 280 }, %struct.Test { i32 1000, i32 287 }, %struct.Test { i32 1000, i32 291 }, %struct.Test { i32 1000, i32 295 }, %struct.Test { i32 1000, i32 299 }, %struct.Test { i32 1000, i32 303 }, %struct.Test { i32 1000, i32 304 }, %struct.Test { i32 1000, i32 312 }, %struct.Test { i32 1000, i32 328 }, %struct.Test { i32 1000, i32 330 }, %struct.Test { i32 1000, i32 333 }, %struct.Test { i32 1000, i32 339 }, %struct.Test { i32 1000, i32 342 }, %struct.Test { i32 1000, i32 346 }, %struct.Test { i32 1000, i32 350 }, %struct.Test { i32 1000, i32 361 }, %struct.Test { i32 1000, i32 371 }, %struct.Test { i32 1000, i32 376 }, %struct.Test { i32 1000, i32 378 }, %struct.Test { i32 1000, i32 382 }, %struct.Test { i32 1000, i32 384 }, %struct.Test { i32 1000, i32 385 }, %struct.Test { i32 1000, i32 390 }, %struct.Test { i32 1000, i32 396 }, %struct.Test { i32 1001, i32 5 }, %struct.Test { i32 1001, i32 7 }, %struct.Test { i32 1001, i32 8 }, %struct.Test { i32 1001, i32 11 }, %struct.Test { i32 1001, i32 16 }, %struct.Test { i32 1001, i32 20 }, %struct.Test { i32 1001, i32 21 }, %struct.Test { i32 1001, i32 22 }, %struct.Test { i32 1001, i32 29 }, %struct.Test { i32 1001, i32 34 }, %struct.Test { i32 1001, i32 39 }, %struct.Test { i32 1001, i32 40 }, %struct.Test { i32 1001, i32 41 }, %struct.Test { i32 1001, i32 42 }, %struct.Test { i32 1001, i32 47 }, %struct.Test { i32 1001, i32 54 }, %struct.Test { i32 1001, i32 63 }, %struct.Test { i32 1001, i32 68 }, %struct.Test { i32 1001, i32 71 }, %struct.Test { i32 1001, i32 78 }, %struct.Test { i32 1001, i32 84 }, %struct.Test { i32 1001, i32 85 }, %struct.Test { i32 1001, i32 93 }, %struct.Test { i32 1001, i32 96 }, %struct.Test { i32 1001, i32 97 }, %struct.Test { i32 1001, i32 103 }, %struct.Test { i32 1001, i32 104 }, %struct.Test { i32 1001, i32 107 }, %struct.Test { i32 1001, i32 117 }, %struct.Test { i32 1001, i32 129 }, %struct.Test { i32 1001, i32 139 }, %struct.Test { i32 1001, i32 140 }, %struct.Test { i32 1001, i32 148 }, %struct.Test { i32 1001, i32 156 }, %struct.Test { i32 1001, i32 160 }, %struct.Test { i32 1001, i32 167 }, %struct.Test { i32 1001, i32 172 }, %struct.Test { i32 1001, i32 174 }, %struct.Test { i32 1001, i32 175 }, %struct.Test { i32 1001, i32 179 }, %struct.Test { i32 1001, i32 185 }, %struct.Test { i32 1001, i32 186 }, %struct.Test { i32 1001, i32 193 }, %struct.Test { i32 1001, i32 194 }, %struct.Test { i32 1001, i32 207 }, %struct.Test { i32 1001, i32 208 }, %struct.Test { i32 1001, i32 216 }, %struct.Test { i32 1001, i32 219 }, %struct.Test { i32 1001, i32 224 }, %struct.Test { i32 1001, i32 228 }, %struct.Test { i32 1001, i32 229 }, %struct.Test { i32 1001, i32 235 }, %struct.Test { i32 1001, i32 237 }, %struct.Test { i32 1001, i32 240 }, %struct.Test { i32 1001, i32 246 }, %struct.Test { i32 1001, i32 252 }, %struct.Test { i32 1001, i32 255 }, %struct.Test { i32 1001, i32 256 }, %struct.Test { i32 1001, i32 257 }, %struct.Test { i32 1001, i32 259 }, %struct.Test { i32 1001, i32 260 }, %struct.Test { i32 1001, i32 261 }, %struct.Test { i32 1001, i32 265 }, %struct.Test { i32 1001, i32 267 }, %struct.Test { i32 1001, i32 269 }, %struct.Test { i32 1001, i32 275 }, %struct.Test { i32 1001, i32 286 }, %struct.Test { i32 1001, i32 288 }, %struct.Test { i32 1001, i32 289 }, %struct.Test { i32 1001, i32 294 }, %struct.Test { i32 1001, i32 301 }, %struct.Test { i32 1001, i32 302 }, %struct.Test { i32 1001, i32 308 }, %struct.Test { i32 1001, i32 309 }, %struct.Test { i32 1001, i32 314 }, %struct.Test { i32 1001, i32 322 }, %struct.Test { i32 1001, i32 323 }, %struct.Test { i32 1001, i32 325 }, %struct.Test { i32 1001, i32 326 }, %struct.Test { i32 1001, i32 327 }, %struct.Test { i32 1001, i32 334 }, %struct.Test { i32 1001, i32 337 }, %struct.Test { i32 1001, i32 341 }, %struct.Test { i32 1001, i32 347 }, %struct.Test { i32 1001, i32 352 }, %struct.Test { i32 1001, i32 357 }, %struct.Test { i32 1001, i32 360 }, %struct.Test { i32 1001, i32 363 }, %struct.Test { i32 1001, i32 365 }, %struct.Test { i32 1001, i32 366 }, %struct.Test { i32 1001, i32 369 }, %struct.Test { i32 1001, i32 375 }, %struct.Test { i32 1001, i32 379 }, %struct.Test { i32 1001, i32 381 }, %struct.Test { i32 1001, i32 393 }, %struct.Test { i32 1001, i32 394 }, %struct.Test { i32 1001, i32 398 }, %struct.Test { i32 1002, i32 9 }, %struct.Test { i32 1002, i32 17 }, %struct.Test { i32 1002, i32 23 }, %struct.Test { i32 1002, i32 24 }, %struct.Test { i32 1002, i32 30 }, %struct.Test { i32 1002, i32 33 }, %struct.Test { i32 1002, i32 38 }, %struct.Test { i32 1002, i32 43 }, %struct.Test { i32 1002, i32 45 }, %struct.Test { i32 1002, i32 53 }, %struct.Test { i32 1002, i32 57 }, %struct.Test { i32 1002, i32 59 }, %struct.Test { i32 1002, i32 60 }, %struct.Test { i32 1002, i32 64 }, %struct.Test { i32 1002, i32 69 }, %struct.Test { i32 1002, i32 70 }, %struct.Test { i32 1002, i32 79 }, %struct.Test { i32 1002, i32 88 }, %struct.Test { i32 1002, i32 94 }, %struct.Test { i32 1002, i32 98 }, %struct.Test { i32 1002, i32 100 }, %struct.Test { i32 1002, i32 110 }, %struct.Test { i32 1002, i32 111 }, %struct.Test { i32 1002, i32 115 }, %struct.Test { i32 1002, i32 118 }, %struct.Test { i32 1002, i32 123 }, %struct.Test { i32 1002, i32 125 }, %struct.Test { i32 1002, i32 127 }, %struct.Test { i32 1002, i32 130 }, %struct.Test { i32 1002, i32 131 }, %struct.Test { i32 1002, i32 134 }, %struct.Test { i32 1002, i32 136 }, %struct.Test { i32 1002, i32 138 }, %struct.Test { i32 1002, i32 142 }, %struct.Test { i32 1002, i32 146 }, %struct.Test { i32 1002, i32 149 }, %struct.Test { i32 1002, i32 150 }, %struct.Test { i32 1002, i32 152 }, %struct.Test { i32 1002, i32 153 }, %struct.Test { i32 1002, i32 157 }, %struct.Test { i32 1002, i32 163 }, %struct.Test { i32 1002, i32 166 }, %struct.Test { i32 1002, i32 168 }, %struct.Test { i32 1002, i32 170 }, %struct.Test { i32 1002, i32 171 }, %struct.Test { i32 1002, i32 173 }, %struct.Test { i32 1002, i32 176 }, %struct.Test { i32 1002, i32 177 }, %struct.Test { i32 1002, i32 180 }, %struct.Test { i32 1002, i32 183 }, %struct.Test { i32 1002, i32 184 }, %struct.Test { i32 1002, i32 189 }, %struct.Test { i32 1002, i32 191 }, %struct.Test { i32 1002, i32 197 }, %struct.Test { i32 1002, i32 202 }, %struct.Test { i32 1002, i32 203 }, %struct.Test { i32 1002, i32 204 }, %struct.Test { i32 1002, i32 210 }, %struct.Test { i32 1002, i32 218 }, %struct.Test { i32 1002, i32 220 }, %struct.Test { i32 1002, i32 232 }, %struct.Test { i32 1002, i32 236 }, %struct.Test { i32 1002, i32 238 }, %struct.Test { i32 1002, i32 241 }, %struct.Test { i32 1002, i32 243 }, %struct.Test { i32 1002, i32 244 }, %struct.Test { i32 1002, i32 251 }, %struct.Test { i32 1002, i32 253 }, %struct.Test { i32 1002, i32 254 }, %struct.Test { i32 1002, i32 258 }, %struct.Test { i32 1002, i32 264 }, %struct.Test { i32 1002, i32 272 }, %struct.Test { i32 1002, i32 277 }, %struct.Test { i32 1002, i32 279 }, %struct.Test { i32 1002, i32 282 }, %struct.Test { i32 1002, i32 283 }, %struct.Test { i32 1002, i32 284 }, %struct.Test { i32 1002, i32 290 }, %struct.Test { i32 1002, i32 292 }, %struct.Test { i32 1002, i32 296 }, %struct.Test { i32 1002, i32 297 }, %struct.Test { i32 1002, i32 298 }, %struct.Test { i32 1002, i32 300 }, %struct.Test { i32 1002, i32 306 }, %struct.Test { i32 1002, i32 307 }, %struct.Test { i32 1002, i32 310 }, %struct.Test { i32 1002, i32 311 }, %struct.Test { i32 1002, i32 315 }, %struct.Test { i32 1002, i32 316 }, %struct.Test { i32 1002, i32 319 }, %struct.Test { i32 1002, i32 321 }, %struct.Test { i32 1002, i32 324 }, %struct.Test { i32 1002, i32 331 }, %struct.Test { i32 1002, i32 335 }, %struct.Test { i32 1002, i32 340 }, %struct.Test { i32 1002, i32 344 }, %struct.Test { i32 1002, i32 349 }, %struct.Test { i32 1002, i32 353 }, %struct.Test { i32 1002, i32 354 }, %struct.Test { i32 1002, i32 358 }, %struct.Test { i32 1002, i32 362 }, %struct.Test { i32 1002, i32 364 }, %struct.Test { i32 1002, i32 370 }, %struct.Test { i32 1002, i32 374 }, %struct.Test { i32 1002, i32 380 }, %struct.Test { i32 1002, i32 383 }, %struct.Test { i32 1002, i32 386 }, %struct.Test { i32 1002, i32 389 }, %struct.Test { i32 1002, i32 391 }, %struct.Test { i32 1002, i32 392 }, %struct.Test { i32 1002, i32 397 }, %struct.Test { i32 1003, i32 0 }, %struct.Test { i32 1003, i32 3 }, %struct.Test { i32 1003, i32 4 }, %struct.Test { i32 1003, i32 6 }, %struct.Test { i32 1003, i32 10 }, %struct.Test { i32 1003, i32 12 }, %struct.Test { i32 1003, i32 14 }, %struct.Test { i32 1003, i32 15 }, %struct.Test { i32 1003, i32 25 }, %struct.Test { i32 1003, i32 27 }, %struct.Test { i32 1003, i32 28 }, %struct.Test { i32 1003, i32 44 }, %struct.Test { i32 1003, i32 48 }, %struct.Test { i32 1003, i32 50 }, %struct.Test { i32 1003, i32 51 }, %struct.Test { i32 1003, i32 52 }, %struct.Test { i32 1003, i32 56 }, %struct.Test { i32 1003, i32 58 }, %struct.Test { i32 1003, i32 65 }, %struct.Test { i32 1003, i32 67 }, %struct.Test { i32 1003, i32 80 }, %struct.Test { i32 1003, i32 86 }, %struct.Test { i32 1003, i32 90 }, %struct.Test { i32 1003, i32 102 }, %struct.Test { i32 1003, i32 106 }, %struct.Test { i32 1003, i32 112 }, %struct.Test { i32 1003, i32 113 }, %struct.Test { i32 1003, i32 116 }, %struct.Test { i32 1003, i32 121 }, %struct.Test { i32 1003, i32 122 }, %struct.Test { i32 1003, i32 124 }, %struct.Test { i32 1003, i32 126 }, %struct.Test { i32 1003, i32 132 }, %struct.Test { i32 1003, i32 133 }, %struct.Test { i32 1003, i32 135 }, %struct.Test { i32 1003, i32 141 }, %struct.Test { i32 1003, i32 145 }, %struct.Test { i32 1003, i32 147 }, %struct.Test { i32 1003, i32 154 }, %struct.Test { i32 1003, i32 155 }, %struct.Test { i32 1003, i32 159 }, %struct.Test { i32 1003, i32 164 }, %struct.Test { i32 1003, i32 178 }, %struct.Test { i32 1003, i32 192 }, %struct.Test { i32 1003, i32 199 }, %struct.Test { i32 1003, i32 209 }, %struct.Test { i32 1003, i32 222 }, %struct.Test { i32 1003, i32 230 }, %struct.Test { i32 1003, i32 231 }, %struct.Test { i32 1003, i32 234 }, %struct.Test { i32 1003, i32 239 }, %struct.Test { i32 1003, i32 247 }, %struct.Test { i32 1003, i32 248 }, %struct.Test { i32 1003, i32 262 }, %struct.Test { i32 1003, i32 263 }, %struct.Test { i32 1003, i32 268 }, %struct.Test { i32 1003, i32 276 }, %struct.Test { i32 1003, i32 278 }, %struct.Test { i32 1003, i32 281 }, %struct.Test { i32 1003, i32 285 }, %struct.Test { i32 1003, i32 293 }, %struct.Test { i32 1003, i32 305 }, %struct.Test { i32 1003, i32 313 }, %struct.Test { i32 1003, i32 317 }, %struct.Test { i32 1003, i32 318 }, %struct.Test { i32 1003, i32 320 }, %struct.Test { i32 1003, i32 329 }, %struct.Test { i32 1003, i32 332 }, %struct.Test { i32 1003, i32 336 }, %struct.Test { i32 1003, i32 338 }, %struct.Test { i32 1003, i32 343 }, %struct.Test { i32 1003, i32 345 }, %struct.Test { i32 1003, i32 348 }, %struct.Test { i32 1003, i32 351 }, %struct.Test { i32 1003, i32 355 }, %struct.Test { i32 1003, i32 356 }, %struct.Test { i32 1003, i32 359 }, %struct.Test { i32 1003, i32 367 }, %struct.Test { i32 1003, i32 368 }, %struct.Test { i32 1003, i32 372 }, %struct.Test { i32 1003, i32 373 }, %struct.Test { i32 1003, i32 377 }, %struct.Test { i32 1003, i32 387 }, %struct.Test { i32 1003, i32 388 }, %struct.Test { i32 1003, i32 395 }, %struct.Test { i32 1003, i32 399 }], align 16
@array1 = dso_local global [400 x %struct.Test] zeroinitializer, align 16
@__const.benchmark_body.test_cases = private unnamed_addr constant [9 x ptr] [ptr @TestingPathological, ptr @TestingRandom, ptr @TestingMostlyDescending, ptr @TestingMostlyAscending, ptr @TestingAscending, ptr @TestingDescending, ptr @TestingEqual, ptr @TestingJittered, ptr @TestingMostlyEqual], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Min(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load i64, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8
  store i64 %10, ptr %3, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load i64, ptr %5, align 8
  store i64 %12, ptr %3, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i64, ptr %3, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Max(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load i64, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8
  store i64 %10, ptr %3, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load i64, ptr %5, align 8
  store i64 %12, ptr %3, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i64, ptr %3, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @TestCompare(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.Test, align 4
  %4 = alloca %struct.Test, align 4
  store i64 %0, ptr %3, align 4
  store i64 %1, ptr %4, align 4
  %5 = getelementptr inbounds nuw %struct.Test, ptr %3, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds nuw %struct.Test, ptr %4, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Range_length(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.Range, align 8
  %4 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 0
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 1
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Range, ptr %3, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw %struct.Range, ptr %3, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = sub nsw i64 %7, %9
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @MakeRange(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.Range, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds nuw %struct.Range, ptr %3, i32 0, i32 0
  store i64 %6, ptr %7, align 8
  %8 = load i64, ptr %5, align 8
  %9 = getelementptr inbounds nuw %struct.Range, ptr %3, i32 0, i32 1
  store i64 %8, ptr %9, align 8
  %10 = load { i64, i64 }, ptr %3, align 8
  ret { i64, i64 } %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @FloorPowerOfTwo(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %4 = load i64, ptr %2, align 8
  store i64 %4, ptr %3, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %3, align 8
  %7 = ashr i64 %6, 1
  %8 = or i64 %5, %7
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = ashr i64 %10, 2
  %12 = or i64 %9, %11
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = load i64, ptr %3, align 8
  %15 = ashr i64 %14, 4
  %16 = or i64 %13, %15
  store i64 %16, ptr %3, align 8
  %17 = load i64, ptr %3, align 8
  %18 = load i64, ptr %3, align 8
  %19 = ashr i64 %18, 8
  %20 = or i64 %17, %19
  store i64 %20, ptr %3, align 8
  %21 = load i64, ptr %3, align 8
  %22 = load i64, ptr %3, align 8
  %23 = ashr i64 %22, 16
  %24 = or i64 %21, %23
  store i64 %24, ptr %3, align 8
  %25 = load i64, ptr %3, align 8
  %26 = load i64, ptr %3, align 8
  %27 = ashr i64 %26, 32
  %28 = or i64 %25, %27
  store i64 %28, ptr %3, align 8
  %29 = load i64, ptr %3, align 8
  %30 = load i64, ptr %3, align 8
  %31 = ashr i64 %30, 1
  %32 = sub nsw i64 %29, %31
  ret i64 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @BinaryFirst(ptr noundef %0, i64 noundef %1, i64 %2, i64 %3, ptr noundef %4) #0 {
  %6 = alloca %struct.Range, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 0
  store i64 %2, ptr %13, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 1
  store i64 %3, ptr %14, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  %15 = getelementptr inbounds nuw %struct.Range, ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %10, align 8
  %17 = getelementptr inbounds nuw %struct.Range, ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, ptr %11, align 8
  br label %20

20:                                               ; preds = %47, %5
  %21 = load i64, ptr %10, align 8
  %22 = load i64, ptr %11, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i64, ptr %10, align 8
  %26 = load i64, ptr %11, align 8
  %27 = load i64, ptr %10, align 8
  %28 = sub nsw i64 %26, %27
  %29 = sdiv i64 %28, 2
  %30 = add nsw i64 %25, %29
  store i64 %30, ptr %12, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %12, align 8
  %34 = getelementptr inbounds %struct.Test, ptr %32, i64 %33
  %35 = load ptr, ptr %7, align 8
  %36 = load i64, ptr %8, align 8
  %37 = getelementptr inbounds %struct.Test, ptr %35, i64 %36
  %38 = load i64, ptr %34, align 4
  %39 = load i64, ptr %37, align 4
  %40 = call zeroext i8 %31(i64 %38, i64 %39)
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i64, ptr %12, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %10, align 8
  br label %47

45:                                               ; preds = %24
  %46 = load i64, ptr %12, align 8
  store i64 %46, ptr %11, align 8
  br label %47

47:                                               ; preds = %45, %42
  br label %20, !llvm.loop !6

48:                                               ; preds = %20
  %49 = load i64, ptr %10, align 8
  %50 = getelementptr inbounds nuw %struct.Range, ptr %6, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load ptr, ptr %9, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %10, align 8
  %58 = getelementptr inbounds %struct.Test, ptr %56, i64 %57
  %59 = load ptr, ptr %7, align 8
  %60 = load i64, ptr %8, align 8
  %61 = getelementptr inbounds %struct.Test, ptr %59, i64 %60
  %62 = load i64, ptr %58, align 4
  %63 = load i64, ptr %61, align 4
  %64 = call zeroext i8 %55(i64 %62, i64 %63)
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i64, ptr %10, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, ptr %10, align 8
  br label %70

70:                                               ; preds = %67, %54, %48
  %71 = load i64, ptr %10, align 8
  ret i64 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @BinaryLast(ptr noundef %0, i64 noundef %1, i64 %2, i64 %3, ptr noundef %4) #0 {
  %6 = alloca %struct.Range, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 0
  store i64 %2, ptr %13, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 1
  store i64 %3, ptr %14, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  %15 = getelementptr inbounds nuw %struct.Range, ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %10, align 8
  %17 = getelementptr inbounds nuw %struct.Range, ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, ptr %11, align 8
  br label %20

20:                                               ; preds = %47, %5
  %21 = load i64, ptr %10, align 8
  %22 = load i64, ptr %11, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i64, ptr %10, align 8
  %26 = load i64, ptr %11, align 8
  %27 = load i64, ptr %10, align 8
  %28 = sub nsw i64 %26, %27
  %29 = sdiv i64 %28, 2
  %30 = add nsw i64 %25, %29
  store i64 %30, ptr %12, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds %struct.Test, ptr %32, i64 %33
  %35 = load ptr, ptr %7, align 8
  %36 = load i64, ptr %12, align 8
  %37 = getelementptr inbounds %struct.Test, ptr %35, i64 %36
  %38 = load i64, ptr %34, align 4
  %39 = load i64, ptr %37, align 4
  %40 = call zeroext i8 %31(i64 %38, i64 %39)
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load i64, ptr %12, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %10, align 8
  br label %47

45:                                               ; preds = %24
  %46 = load i64, ptr %12, align 8
  store i64 %46, ptr %11, align 8
  br label %47

47:                                               ; preds = %45, %42
  br label %20, !llvm.loop !8

48:                                               ; preds = %20
  %49 = load i64, ptr %10, align 8
  %50 = getelementptr inbounds nuw %struct.Range, ptr %6, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load ptr, ptr %9, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds %struct.Test, ptr %56, i64 %57
  %59 = load ptr, ptr %7, align 8
  %60 = load i64, ptr %10, align 8
  %61 = getelementptr inbounds %struct.Test, ptr %59, i64 %60
  %62 = load i64, ptr %58, align 4
  %63 = load i64, ptr %61, align 4
  %64 = call zeroext i8 %55(i64 %62, i64 %63)
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i64, ptr %10, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, ptr %10, align 8
  br label %69

69:                                               ; preds = %66, %54, %48
  %70 = load i64, ptr %10, align 8
  ret i64 %70
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InsertionSort(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) #0 {
  %5 = alloca %struct.Range, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Test, align 4
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %1, ptr %11, align 8
  %12 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %2, ptr %12, align 8
  store ptr %0, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  %13 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr %8, align 8
  br label %16

16:                                               ; preds = %59, %4
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %8, align 8
  %24 = getelementptr inbounds %struct.Test, ptr %22, i64 %23
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %24, i64 8, i1 false)
  %25 = load i64, ptr %8, align 8
  store i64 %25, ptr %10, align 8
  br label %26

26:                                               ; preds = %52, %21
  %27 = load i64, ptr %10, align 8
  %28 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 0
  %29 = load i64, ptr %28, align 8
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load i64, ptr %10, align 8
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds %struct.Test, ptr %33, i64 %35
  %37 = load i64, ptr %9, align 4
  %38 = load i64, ptr %36, align 4
  %39 = call zeroext i8 %32(i64 %37, i64 %38)
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %31, %26
  %43 = phi i1 [ false, %26 ], [ %41, %31 ]
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = load ptr, ptr %6, align 8
  %46 = load i64, ptr %10, align 8
  %47 = getelementptr inbounds %struct.Test, ptr %45, i64 %46
  %48 = load ptr, ptr %6, align 8
  %49 = load i64, ptr %10, align 8
  %50 = sub nsw i64 %49, 1
  %51 = getelementptr inbounds %struct.Test, ptr %48, i64 %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %51, i64 8, i1 false)
  br label %52

52:                                               ; preds = %44
  %53 = load i64, ptr %10, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, ptr %10, align 8
  br label %26, !llvm.loop !9

55:                                               ; preds = %42
  %56 = load ptr, ptr %6, align 8
  %57 = load i64, ptr %10, align 8
  %58 = getelementptr inbounds %struct.Test, ptr %56, i64 %57
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %9, i64 8, i1 false)
  br label %59

59:                                               ; preds = %55
  %60 = load i64, ptr %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, ptr %8, align 8
  br label %16, !llvm.loop !10

62:                                               ; preds = %16
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Reverse(ptr noundef %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.Range, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.Test, align 4
  %10 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 0
  store i64 %1, ptr %10, align 8
  %11 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 1
  store i64 %2, ptr %11, align 8
  store ptr %0, ptr %5, align 8
  %12 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = call i64 @Range_length(i64 %13, i64 %15)
  %17 = sdiv i64 %16, 2
  %18 = sub nsw i64 %17, 1
  store i64 %18, ptr %6, align 8
  br label %19

19:                                               ; preds = %40, %3
  %20 = load i64, ptr %6, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.Range, ptr %4, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr %6, align 8
  %27 = add nsw i64 %25, %26
  %28 = getelementptr inbounds %struct.Test, ptr %23, i64 %27
  store ptr %28, ptr %7, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds nuw %struct.Range, ptr %4, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = load i64, ptr %6, align 8
  %33 = sub nsw i64 %31, %32
  %34 = sub nsw i64 %33, 1
  %35 = getelementptr inbounds %struct.Test, ptr %29, i64 %34
  store ptr %35, ptr %8, align 8
  %36 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %36, i64 8, i1 false)
  %37 = load ptr, ptr %7, align 8
  %38 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %37, ptr align 4 %38, i64 8, i1 false)
  %39 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %9, i64 8, i1 false)
  br label %40

40:                                               ; preds = %22
  %41 = load i64, ptr %6, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, ptr %6, align 8
  br label %19, !llvm.loop !11

43:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BlockSwap(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.Test, align 4
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  store i64 0, ptr %9, align 8
  br label %13

13:                                               ; preds = %32, %4
  %14 = load i64, ptr %9, align 8
  %15 = load i64, ptr %8, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %6, align 8
  %20 = load i64, ptr %9, align 8
  %21 = add nsw i64 %19, %20
  %22 = getelementptr inbounds %struct.Test, ptr %18, i64 %21
  store ptr %22, ptr %10, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load i64, ptr %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = getelementptr inbounds %struct.Test, ptr %23, i64 %26
  store ptr %27, ptr %11, align 8
  %28 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %28, i64 8, i1 false)
  %29 = load ptr, ptr %10, align 8
  %30 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %30, i64 8, i1 false)
  %31 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 4 %12, i64 8, i1 false)
  br label %32

32:                                               ; preds = %17
  %33 = load i64, ptr %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %9, align 8
  br label %13, !llvm.loop !12

35:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Rotate(ptr noundef %0, i64 noundef %1, i64 %2, i64 %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.Range, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.Range, align 8
  %14 = alloca %struct.Range, align 8
  %15 = alloca %struct.Range, align 8
  %16 = alloca %struct.Range, align 8
  %17 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  store i64 %2, ptr %17, align 8
  %18 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  store i64 %3, ptr %18, align 8
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i64 %5, ptr %11, align 8
  %19 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = call i64 @Range_length(i64 %20, i64 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %191

26:                                               ; preds = %6
  %27 = load i64, ptr %9, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw %struct.Range, ptr %7, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = load i64, ptr %9, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, ptr %12, align 8
  br label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds nuw %struct.Range, ptr %7, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = load i64, ptr %9, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, ptr %12, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = getelementptr inbounds nuw %struct.Range, ptr %7, i32 0, i32 0
  %41 = load i64, ptr %40, align 8
  %42 = load i64, ptr %12, align 8
  %43 = call { i64, i64 } @MakeRange(i64 noundef %41, i64 noundef %42)
  %44 = getelementptr inbounds nuw { i64, i64 }, ptr %15, i32 0, i32 0
  %45 = extractvalue { i64, i64 } %43, 0
  store i64 %45, ptr %44, align 8
  %46 = getelementptr inbounds nuw { i64, i64 }, ptr %15, i32 0, i32 1
  %47 = extractvalue { i64, i64 } %43, 1
  store i64 %47, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %15, i64 16, i1 false)
  %48 = load i64, ptr %12, align 8
  %49 = getelementptr inbounds nuw %struct.Range, ptr %7, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = call { i64, i64 } @MakeRange(i64 noundef %48, i64 noundef %50)
  %52 = getelementptr inbounds nuw { i64, i64 }, ptr %16, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %51, 0
  store i64 %53, ptr %52, align 8
  %54 = getelementptr inbounds nuw { i64, i64 }, ptr %16, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %51, 1
  store i64 %55, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 16, i1 false)
  %56 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = call i64 @Range_length(i64 %57, i64 %59)
  %61 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @Range_length(i64 %62, i64 %64)
  %66 = icmp sle i64 %60, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %39
  %68 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = call i64 @Range_length(i64 %69, i64 %71)
  %73 = load i64, ptr %11, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %120

75:                                               ; preds = %67
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr inbounds %struct.Test, ptr %76, i64 0
  %78 = load ptr, ptr %8, align 8
  %79 = getelementptr inbounds nuw %struct.Range, ptr %13, i32 0, i32 0
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds %struct.Test, ptr %78, i64 %80
  %82 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %85 = load i64, ptr %84, align 8
  %86 = call i64 @Range_length(i64 %83, i64 %85)
  %87 = mul i64 %86, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %77, ptr align 4 %81, i64 %87, i1 false)
  %88 = load ptr, ptr %8, align 8
  %89 = getelementptr inbounds nuw %struct.Range, ptr %13, i32 0, i32 0
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr inbounds %struct.Test, ptr %88, i64 %90
  %92 = load ptr, ptr %8, align 8
  %93 = getelementptr inbounds nuw %struct.Range, ptr %14, i32 0, i32 0
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds %struct.Test, ptr %92, i64 %94
  %96 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %99 = load i64, ptr %98, align 8
  %100 = call i64 @Range_length(i64 %97, i64 %99)
  %101 = mul i64 %100, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %91, ptr align 4 %95, i64 %101, i1 false)
  %102 = load ptr, ptr %8, align 8
  %103 = getelementptr inbounds nuw %struct.Range, ptr %13, i32 0, i32 0
  %104 = load i64, ptr %103, align 8
  %105 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %106 = load i64, ptr %105, align 8
  %107 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %108 = load i64, ptr %107, align 8
  %109 = call i64 @Range_length(i64 %106, i64 %108)
  %110 = add nsw i64 %104, %109
  %111 = getelementptr inbounds %struct.Test, ptr %102, i64 %110
  %112 = load ptr, ptr %10, align 8
  %113 = getelementptr inbounds %struct.Test, ptr %112, i64 0
  %114 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %115 = load i64, ptr %114, align 8
  %116 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %117 = load i64, ptr %116, align 8
  %118 = call i64 @Range_length(i64 %115, i64 %117)
  %119 = mul i64 %118, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %111, ptr align 4 %113, i64 %119, i1 false)
  br label %191

120:                                              ; preds = %67
  br label %175

121:                                              ; preds = %39
  %122 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %125 = load i64, ptr %124, align 8
  %126 = call i64 @Range_length(i64 %123, i64 %125)
  %127 = load i64, ptr %11, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %174

129:                                              ; preds = %121
  %130 = load ptr, ptr %10, align 8
  %131 = getelementptr inbounds %struct.Test, ptr %130, i64 0
  %132 = load ptr, ptr %8, align 8
  %133 = getelementptr inbounds nuw %struct.Range, ptr %14, i32 0, i32 0
  %134 = load i64, ptr %133, align 8
  %135 = getelementptr inbounds %struct.Test, ptr %132, i64 %134
  %136 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %137 = load i64, ptr %136, align 8
  %138 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %139 = load i64, ptr %138, align 8
  %140 = call i64 @Range_length(i64 %137, i64 %139)
  %141 = mul i64 %140, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %131, ptr align 4 %135, i64 %141, i1 false)
  %142 = load ptr, ptr %8, align 8
  %143 = getelementptr inbounds nuw %struct.Range, ptr %14, i32 0, i32 1
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %146 = load i64, ptr %145, align 8
  %147 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %148 = load i64, ptr %147, align 8
  %149 = call i64 @Range_length(i64 %146, i64 %148)
  %150 = sub nsw i64 %144, %149
  %151 = getelementptr inbounds %struct.Test, ptr %142, i64 %150
  %152 = load ptr, ptr %8, align 8
  %153 = getelementptr inbounds nuw %struct.Range, ptr %13, i32 0, i32 0
  %154 = load i64, ptr %153, align 8
  %155 = getelementptr inbounds %struct.Test, ptr %152, i64 %154
  %156 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %159 = load i64, ptr %158, align 8
  %160 = call i64 @Range_length(i64 %157, i64 %159)
  %161 = mul i64 %160, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %151, ptr align 4 %155, i64 %161, i1 false)
  %162 = load ptr, ptr %8, align 8
  %163 = getelementptr inbounds nuw %struct.Range, ptr %13, i32 0, i32 0
  %164 = load i64, ptr %163, align 8
  %165 = getelementptr inbounds %struct.Test, ptr %162, i64 %164
  %166 = load ptr, ptr %10, align 8
  %167 = getelementptr inbounds %struct.Test, ptr %166, i64 0
  %168 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %169 = load i64, ptr %168, align 8
  %170 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %171 = load i64, ptr %170, align 8
  %172 = call i64 @Range_length(i64 %169, i64 %171)
  %173 = mul i64 %172, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %165, ptr align 4 %167, i64 %173, i1 false)
  br label %191

174:                                              ; preds = %121
  br label %175

175:                                              ; preds = %174, %120
  %176 = load ptr, ptr %8, align 8
  %177 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %178 = load i64, ptr %177, align 8
  %179 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %180 = load i64, ptr %179, align 8
  call void @Reverse(ptr noundef %176, i64 %178, i64 %180)
  %181 = load ptr, ptr %8, align 8
  %182 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %183 = load i64, ptr %182, align 8
  %184 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %185 = load i64, ptr %184, align 8
  call void @Reverse(ptr noundef %181, i64 %183, i64 %185)
  %186 = load ptr, ptr %8, align 8
  %187 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %188 = load i64, ptr %187, align 8
  %189 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %190 = load i64, ptr %189, align 8
  call void @Reverse(ptr noundef %186, i64 %188, i64 %190)
  br label %191

191:                                              ; preds = %175, %129, %75, %25
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WikiMerge(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef byval(%struct.Range) align 8 %5, ptr noundef %6, ptr noundef %7, i64 noundef %8) #0 {
  %10 = alloca %struct.Range, align 8
  %11 = alloca %struct.Range, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca %struct.Test, align 4
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca %struct.Test, align 4
  %30 = getelementptr inbounds nuw { i64, i64 }, ptr %10, i32 0, i32 0
  store i64 %1, ptr %30, align 8
  %31 = getelementptr inbounds nuw { i64, i64 }, ptr %10, i32 0, i32 1
  store i64 %2, ptr %31, align 8
  %32 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  store i64 %3, ptr %32, align 8
  %33 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  store i64 %4, ptr %33, align 8
  store ptr %0, ptr %12, align 8
  store ptr %6, ptr %13, align 8
  store ptr %7, ptr %14, align 8
  store i64 %8, ptr %15, align 8
  %34 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = call i64 @Range_length(i64 %35, i64 %37)
  %39 = load i64, ptr %15, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %9
  %42 = load ptr, ptr %14, align 8
  %43 = getelementptr inbounds %struct.Test, ptr %42, i64 0
  store ptr %43, ptr %16, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 0
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.Test, ptr %44, i64 %46
  store ptr %47, ptr %17, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = getelementptr inbounds nuw %struct.Range, ptr %11, i32 0, i32 0
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.Test, ptr %48, i64 %50
  store ptr %51, ptr %18, align 8
  %52 = load ptr, ptr %14, align 8
  %53 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = call i64 @Range_length(i64 %54, i64 %56)
  %58 = getelementptr inbounds %struct.Test, ptr %52, i64 %57
  store ptr %58, ptr %19, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.Test, ptr %59, i64 %61
  store ptr %62, ptr %20, align 8
  %63 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = call i64 @Range_length(i64 %64, i64 %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %41
  %70 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = call i64 @Range_length(i64 %71, i64 %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %109
  %78 = load ptr, ptr %13, align 8
  %79 = load ptr, ptr %17, align 8
  %80 = load ptr, ptr %16, align 8
  %81 = load i64, ptr %79, align 4
  %82 = load i64, ptr %80, align 4
  %83 = call zeroext i8 %78(i64 %81, i64 %82)
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %77
  %86 = load ptr, ptr %18, align 8
  %87 = load ptr, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %86, ptr align 4 %87, i64 8, i1 false)
  %88 = load ptr, ptr %16, align 8
  %89 = getelementptr inbounds nuw %struct.Test, ptr %88, i32 1
  store ptr %89, ptr %16, align 8
  %90 = load ptr, ptr %18, align 8
  %91 = getelementptr inbounds nuw %struct.Test, ptr %90, i32 1
  store ptr %91, ptr %18, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = load ptr, ptr %19, align 8
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %110

96:                                               ; preds = %85
  br label %109

97:                                               ; preds = %77
  %98 = load ptr, ptr %18, align 8
  %99 = load ptr, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %98, ptr align 4 %99, i64 8, i1 false)
  %100 = load ptr, ptr %17, align 8
  %101 = getelementptr inbounds nuw %struct.Test, ptr %100, i32 1
  store ptr %101, ptr %17, align 8
  %102 = load ptr, ptr %18, align 8
  %103 = getelementptr inbounds nuw %struct.Test, ptr %102, i32 1
  store ptr %103, ptr %18, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = load ptr, ptr %20, align 8
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %110

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %96
  br label %77

110:                                              ; preds = %107, %95
  br label %111

111:                                              ; preds = %110, %69, %41
  %112 = load ptr, ptr %18, align 8
  %113 = load ptr, ptr %16, align 8
  %114 = load ptr, ptr %19, align 8
  %115 = load ptr, ptr %16, align 8
  %116 = ptrtoint ptr %114 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  %120 = mul i64 %119, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %112, ptr align 4 %113, i64 %120, i1 false)
  br label %233

121:                                              ; preds = %9
  store i64 0, ptr %21, align 8
  store i64 0, ptr %22, align 8
  store i64 0, ptr %23, align 8
  %122 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %125 = load i64, ptr %124, align 8
  %126 = call i64 @Range_length(i64 %123, i64 %125)
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %216

128:                                              ; preds = %121
  %129 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  %130 = load i64, ptr %129, align 8
  %131 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  %132 = load i64, ptr %131, align 8
  %133 = call i64 @Range_length(i64 %130, i64 %132)
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %216

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %214
  %137 = load ptr, ptr %13, align 8
  %138 = load ptr, ptr %12, align 8
  %139 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 0
  %140 = load i64, ptr %139, align 8
  %141 = load i64, ptr %22, align 8
  %142 = add nsw i64 %140, %141
  %143 = getelementptr inbounds %struct.Test, ptr %138, i64 %142
  %144 = load ptr, ptr %12, align 8
  %145 = getelementptr inbounds nuw %struct.Range, ptr %10, i32 0, i32 0
  %146 = load i64, ptr %145, align 8
  %147 = load i64, ptr %21, align 8
  %148 = add nsw i64 %146, %147
  %149 = getelementptr inbounds %struct.Test, ptr %144, i64 %148
  %150 = load i64, ptr %143, align 4
  %151 = load i64, ptr %149, align 4
  %152 = call zeroext i8 %137(i64 %150, i64 %151)
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %184, label %154

154:                                              ; preds = %136
  %155 = load ptr, ptr %12, align 8
  %156 = getelementptr inbounds nuw %struct.Range, ptr %11, i32 0, i32 0
  %157 = load i64, ptr %156, align 8
  %158 = load i64, ptr %23, align 8
  %159 = add nsw i64 %157, %158
  %160 = getelementptr inbounds %struct.Test, ptr %155, i64 %159
  store ptr %160, ptr %24, align 8
  %161 = load ptr, ptr %12, align 8
  %162 = getelementptr inbounds nuw %struct.Range, ptr %10, i32 0, i32 0
  %163 = load i64, ptr %162, align 8
  %164 = load i64, ptr %21, align 8
  %165 = add nsw i64 %163, %164
  %166 = getelementptr inbounds %struct.Test, ptr %161, i64 %165
  store ptr %166, ptr %25, align 8
  %167 = load ptr, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 4 %167, i64 8, i1 false)
  %168 = load ptr, ptr %24, align 8
  %169 = load ptr, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %168, ptr align 4 %169, i64 8, i1 false)
  %170 = load ptr, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %170, ptr align 4 %26, i64 8, i1 false)
  %171 = load i64, ptr %21, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, ptr %21, align 8
  %173 = load i64, ptr %23, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, ptr %23, align 8
  %175 = load i64, ptr %21, align 8
  %176 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  %177 = load i64, ptr %176, align 8
  %178 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  %179 = load i64, ptr %178, align 8
  %180 = call i64 @Range_length(i64 %177, i64 %179)
  %181 = icmp sge i64 %175, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %154
  br label %215

183:                                              ; preds = %154
  br label %214

184:                                              ; preds = %136
  %185 = load ptr, ptr %12, align 8
  %186 = getelementptr inbounds nuw %struct.Range, ptr %11, i32 0, i32 0
  %187 = load i64, ptr %186, align 8
  %188 = load i64, ptr %23, align 8
  %189 = add nsw i64 %187, %188
  %190 = getelementptr inbounds %struct.Test, ptr %185, i64 %189
  store ptr %190, ptr %27, align 8
  %191 = load ptr, ptr %12, align 8
  %192 = getelementptr inbounds nuw %struct.Range, ptr %5, i32 0, i32 0
  %193 = load i64, ptr %192, align 8
  %194 = load i64, ptr %22, align 8
  %195 = add nsw i64 %193, %194
  %196 = getelementptr inbounds %struct.Test, ptr %191, i64 %195
  store ptr %196, ptr %28, align 8
  %197 = load ptr, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %197, i64 8, i1 false)
  %198 = load ptr, ptr %27, align 8
  %199 = load ptr, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %198, ptr align 4 %199, i64 8, i1 false)
  %200 = load ptr, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %200, ptr align 4 %29, i64 8, i1 false)
  %201 = load i64, ptr %22, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, ptr %22, align 8
  %203 = load i64, ptr %23, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, ptr %23, align 8
  %205 = load i64, ptr %22, align 8
  %206 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %207 = load i64, ptr %206, align 8
  %208 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %209 = load i64, ptr %208, align 8
  %210 = call i64 @Range_length(i64 %207, i64 %209)
  %211 = icmp sge i64 %205, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %184
  br label %215

213:                                              ; preds = %184
  br label %214

214:                                              ; preds = %213, %183
  br label %136

215:                                              ; preds = %212, %182
  br label %216

216:                                              ; preds = %215, %128, %121
  %217 = load ptr, ptr %12, align 8
  %218 = getelementptr inbounds nuw %struct.Range, ptr %10, i32 0, i32 0
  %219 = load i64, ptr %218, align 8
  %220 = load i64, ptr %21, align 8
  %221 = add nsw i64 %219, %220
  %222 = getelementptr inbounds nuw %struct.Range, ptr %11, i32 0, i32 0
  %223 = load i64, ptr %222, align 8
  %224 = load i64, ptr %23, align 8
  %225 = add nsw i64 %223, %224
  %226 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 0
  %227 = load i64, ptr %226, align 8
  %228 = getelementptr inbounds nuw { i64, i64 }, ptr %11, i32 0, i32 1
  %229 = load i64, ptr %228, align 8
  %230 = call i64 @Range_length(i64 %227, i64 %229)
  %231 = load i64, ptr %21, align 8
  %232 = sub nsw i64 %230, %231
  call void @BlockSwap(ptr noundef %217, i64 noundef %221, i64 noundef %225, i64 noundef %232)
  br label %233

233:                                              ; preds = %216, %111
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WikiSort(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca [512 x %struct.Test], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.Range, align 8
  %21 = alloca %struct.Range, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.Range, align 8
  %25 = alloca %struct.Range, align 8
  %26 = alloca %struct.Range, align 8
  %27 = alloca %struct.Range, align 8
  %28 = alloca %struct.Range, align 8
  %29 = alloca %struct.Range, align 8
  %30 = alloca %struct.Range, align 8
  %31 = alloca %struct.Range, align 8
  %32 = alloca %struct.Range, align 8
  %33 = alloca %struct.Range, align 8
  %34 = alloca %struct.Range, align 8
  %35 = alloca %struct.Range, align 8
  %36 = alloca %struct.Range, align 8
  %37 = alloca %struct.Range, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.Test, align 4
  %42 = alloca %struct.Range, align 8
  %43 = alloca %struct.Range, align 8
  %44 = alloca %struct.Range, align 8
  %45 = alloca %struct.Range, align 8
  %46 = alloca %struct.Range, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca %struct.Range, align 8
  %50 = alloca %struct.Range, align 8
  %51 = alloca %struct.Range, align 8
  %52 = alloca %struct.Range, align 8
  %53 = alloca %struct.Range, align 8
  %54 = alloca %struct.Range, align 8
  %55 = alloca %struct.Range, align 8
  %56 = alloca %struct.Range, align 8
  %57 = alloca %struct.Range, align 8
  %58 = alloca %struct.Range, align 8
  %59 = alloca %struct.Range, align 8
  %60 = alloca %struct.Range, align 8
  %61 = alloca %struct.Range, align 8
  %62 = alloca %struct.Range, align 8
  %63 = alloca %struct.Range, align 8
  %64 = alloca %struct.Range, align 8
  %65 = alloca %struct.Range, align 8
  %66 = alloca %struct.Range, align 8
  %67 = alloca %struct.Range, align 8
  %68 = alloca %struct.Range, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca %struct.Range, align 8
  %72 = alloca %struct.Range, align 8
  %73 = alloca %struct.Range, align 8
  %74 = alloca %struct.Range, align 8
  %75 = alloca %struct.Range, align 8
  %76 = alloca %struct.Range, align 8
  %77 = alloca %struct.Range, align 8
  %78 = alloca %struct.Range, align 8
  %79 = alloca ptr, align 8
  %80 = alloca ptr, align 8
  %81 = alloca %struct.Test, align 4
  %82 = alloca %struct.Range, align 8
  %83 = alloca %struct.Range, align 8
  %84 = alloca i64, align 8
  %85 = alloca i64, align 8
  %86 = alloca ptr, align 8
  %87 = alloca ptr, align 8
  %88 = alloca %struct.Test, align 4
  %89 = alloca %struct.Range, align 8
  %90 = alloca %struct.Range, align 8
  %91 = alloca %struct.Range, align 8
  %92 = alloca %struct.Range, align 8
  %93 = alloca %struct.Range, align 8
  %94 = alloca %struct.Range, align 8
  %95 = alloca %struct.Range, align 8
  %96 = alloca i64, align 8
  %97 = alloca i64, align 8
  %98 = alloca %struct.Range, align 8
  %99 = alloca i64, align 8
  %100 = alloca %struct.Range, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 512, ptr %7, align 8
  %101 = load i64, ptr %5, align 8
  %102 = icmp sle i64 %101, 32
  br i1 %102, label %103, label %116

103:                                              ; preds = %3
  %104 = load ptr, ptr %4, align 8
  %105 = load i64, ptr %5, align 8
  %106 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef %105)
  %107 = getelementptr inbounds nuw { i64, i64 }, ptr %20, i32 0, i32 0
  %108 = extractvalue { i64, i64 } %106, 0
  store i64 %108, ptr %107, align 8
  %109 = getelementptr inbounds nuw { i64, i64 }, ptr %20, i32 0, i32 1
  %110 = extractvalue { i64, i64 } %106, 1
  store i64 %110, ptr %109, align 8
  %111 = load ptr, ptr %6, align 8
  %112 = getelementptr inbounds nuw { i64, i64 }, ptr %20, i32 0, i32 0
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds nuw { i64, i64 }, ptr %20, i32 0, i32 1
  %115 = load i64, ptr %114, align 8
  call void @InsertionSort(ptr noundef %104, i64 %113, i64 %115, ptr noundef %111)
  br label %1867

116:                                              ; preds = %3
  %117 = load i64, ptr %5, align 8
  %118 = call i64 @FloorPowerOfTwo(i64 noundef %117)
  store i64 %118, ptr %16, align 8
  %119 = load i64, ptr %16, align 8
  %120 = sdiv i64 %119, 16
  store i64 %120, ptr %17, align 8
  %121 = load i64, ptr %5, align 8
  %122 = load i64, ptr %17, align 8
  %123 = srem i64 %121, %122
  store i64 %123, ptr %18, align 8
  %124 = load i64, ptr %5, align 8
  %125 = load i64, ptr %17, align 8
  %126 = sdiv i64 %124, %125
  store i64 %126, ptr %19, align 8
  store i64 0, ptr %15, align 8
  store i64 0, ptr %14, align 8
  br label %127

127:                                              ; preds = %148, %116
  %128 = load i64, ptr %15, align 8
  %129 = load i64, ptr %5, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %127
  %132 = load i64, ptr %15, align 8
  store i64 %132, ptr %11, align 8
  %133 = load i64, ptr %19, align 8
  %134 = load i64, ptr %15, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, ptr %15, align 8
  %136 = load i64, ptr %18, align 8
  %137 = load i64, ptr %14, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, ptr %14, align 8
  %139 = load i64, ptr %14, align 8
  %140 = load i64, ptr %17, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load i64, ptr %17, align 8
  %144 = load i64, ptr %14, align 8
  %145 = sub nsw i64 %144, %143
  store i64 %145, ptr %14, align 8
  %146 = load i64, ptr %15, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, ptr %15, align 8
  br label %148

148:                                              ; preds = %142, %131
  %149 = load i64, ptr %15, align 8
  store i64 %149, ptr %13, align 8
  %150 = load ptr, ptr %4, align 8
  %151 = load i64, ptr %11, align 8
  %152 = load i64, ptr %13, align 8
  %153 = call { i64, i64 } @MakeRange(i64 noundef %151, i64 noundef %152)
  %154 = getelementptr inbounds nuw { i64, i64 }, ptr %21, i32 0, i32 0
  %155 = extractvalue { i64, i64 } %153, 0
  store i64 %155, ptr %154, align 8
  %156 = getelementptr inbounds nuw { i64, i64 }, ptr %21, i32 0, i32 1
  %157 = extractvalue { i64, i64 } %153, 1
  store i64 %157, ptr %156, align 8
  %158 = load ptr, ptr %6, align 8
  %159 = getelementptr inbounds nuw { i64, i64 }, ptr %21, i32 0, i32 0
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds nuw { i64, i64 }, ptr %21, i32 0, i32 1
  %162 = load i64, ptr %161, align 8
  call void @InsertionSort(ptr noundef %150, i64 %160, i64 %162, ptr noundef %158)
  br label %127, !llvm.loop !13

163:                                              ; preds = %127
  store i64 16, ptr %10, align 8
  br label %164

164:                                              ; preds = %1863, %163
  %165 = load i64, ptr %10, align 8
  %166 = load i64, ptr %16, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %1867

168:                                              ; preds = %164
  %169 = load i64, ptr %19, align 8
  %170 = sitofp i64 %169 to double
  %171 = call double @sqrt(double noundef %170) #5
  %172 = fptosi double %171 to i64
  store i64 %172, ptr %22, align 8
  %173 = load i64, ptr %19, align 8
  %174 = load i64, ptr %22, align 8
  %175 = sdiv i64 %173, %174
  %176 = add nsw i64 %175, 1
  store i64 %176, ptr %23, align 8
  %177 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef 0)
  %178 = getelementptr inbounds nuw { i64, i64 }, ptr %24, i32 0, i32 0
  %179 = extractvalue { i64, i64 } %177, 0
  store i64 %179, ptr %178, align 8
  %180 = getelementptr inbounds nuw { i64, i64 }, ptr %24, i32 0, i32 1
  %181 = extractvalue { i64, i64 } %177, 1
  store i64 %181, ptr %180, align 8
  %182 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef 0)
  %183 = getelementptr inbounds nuw { i64, i64 }, ptr %25, i32 0, i32 0
  %184 = extractvalue { i64, i64 } %182, 0
  store i64 %184, ptr %183, align 8
  %185 = getelementptr inbounds nuw { i64, i64 }, ptr %25, i32 0, i32 1
  %186 = extractvalue { i64, i64 } %182, 1
  store i64 %186, ptr %185, align 8
  %187 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef 0)
  %188 = getelementptr inbounds nuw { i64, i64 }, ptr %26, i32 0, i32 0
  %189 = extractvalue { i64, i64 } %187, 0
  store i64 %189, ptr %188, align 8
  %190 = getelementptr inbounds nuw { i64, i64 }, ptr %26, i32 0, i32 1
  %191 = extractvalue { i64, i64 } %187, 1
  store i64 %191, ptr %190, align 8
  %192 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef 0)
  %193 = getelementptr inbounds nuw { i64, i64 }, ptr %27, i32 0, i32 0
  %194 = extractvalue { i64, i64 } %192, 0
  store i64 %194, ptr %193, align 8
  %195 = getelementptr inbounds nuw { i64, i64 }, ptr %27, i32 0, i32 1
  %196 = extractvalue { i64, i64 } %192, 1
  store i64 %196, ptr %195, align 8
  store i64 0, ptr %14, align 8
  store i64 0, ptr %15, align 8
  br label %197

197:                                              ; preds = %1701, %1072, %300, %168
  %198 = load i64, ptr %15, align 8
  %199 = load i64, ptr %5, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %1702

201:                                              ; preds = %197
  %202 = load i64, ptr %15, align 8
  store i64 %202, ptr %11, align 8
  %203 = load i64, ptr %19, align 8
  %204 = load i64, ptr %15, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, ptr %15, align 8
  %206 = load i64, ptr %18, align 8
  %207 = load i64, ptr %14, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, ptr %14, align 8
  %209 = load i64, ptr %14, align 8
  %210 = load i64, ptr %17, align 8
  %211 = icmp sge i64 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %201
  %213 = load i64, ptr %17, align 8
  %214 = load i64, ptr %14, align 8
  %215 = sub nsw i64 %214, %213
  store i64 %215, ptr %14, align 8
  %216 = load i64, ptr %15, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, ptr %15, align 8
  br label %218

218:                                              ; preds = %212, %201
  %219 = load i64, ptr %15, align 8
  store i64 %219, ptr %12, align 8
  %220 = load i64, ptr %19, align 8
  %221 = load i64, ptr %15, align 8
  %222 = add nsw i64 %221, %220
  store i64 %222, ptr %15, align 8
  %223 = load i64, ptr %18, align 8
  %224 = load i64, ptr %14, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, ptr %14, align 8
  %226 = load i64, ptr %14, align 8
  %227 = load i64, ptr %17, align 8
  %228 = icmp sge i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %218
  %230 = load i64, ptr %17, align 8
  %231 = load i64, ptr %14, align 8
  %232 = sub nsw i64 %231, %230
  store i64 %232, ptr %14, align 8
  %233 = load i64, ptr %15, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, ptr %15, align 8
  br label %235

235:                                              ; preds = %229, %218
  %236 = load i64, ptr %15, align 8
  store i64 %236, ptr %13, align 8
  %237 = load ptr, ptr %6, align 8
  %238 = load ptr, ptr %4, align 8
  %239 = load i64, ptr %13, align 8
  %240 = sub nsw i64 %239, 1
  %241 = getelementptr inbounds %struct.Test, ptr %238, i64 %240
  %242 = load ptr, ptr %4, align 8
  %243 = load i64, ptr %11, align 8
  %244 = getelementptr inbounds %struct.Test, ptr %242, i64 %243
  %245 = load i64, ptr %241, align 4
  %246 = load i64, ptr %244, align 4
  %247 = call zeroext i8 %237(i64 %245, i64 %246)
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %235
  %250 = load ptr, ptr %4, align 8
  %251 = load i64, ptr %12, align 8
  %252 = load i64, ptr %11, align 8
  %253 = sub nsw i64 %251, %252
  %254 = load i64, ptr %11, align 8
  %255 = load i64, ptr %13, align 8
  %256 = call { i64, i64 } @MakeRange(i64 noundef %254, i64 noundef %255)
  %257 = getelementptr inbounds nuw { i64, i64 }, ptr %28, i32 0, i32 0
  %258 = extractvalue { i64, i64 } %256, 0
  store i64 %258, ptr %257, align 8
  %259 = getelementptr inbounds nuw { i64, i64 }, ptr %28, i32 0, i32 1
  %260 = extractvalue { i64, i64 } %256, 1
  store i64 %260, ptr %259, align 8
  %261 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %262 = getelementptr inbounds nuw { i64, i64 }, ptr %28, i32 0, i32 0
  %263 = load i64, ptr %262, align 8
  %264 = getelementptr inbounds nuw { i64, i64 }, ptr %28, i32 0, i32 1
  %265 = load i64, ptr %264, align 8
  call void @Rotate(ptr noundef %250, i64 noundef %253, i64 %263, i64 %265, ptr noundef %261, i64 noundef 512)
  br label %1701

266:                                              ; preds = %235
  %267 = load ptr, ptr %6, align 8
  %268 = load ptr, ptr %4, align 8
  %269 = load i64, ptr %12, align 8
  %270 = getelementptr inbounds %struct.Test, ptr %268, i64 %269
  %271 = load ptr, ptr %4, align 8
  %272 = load i64, ptr %12, align 8
  %273 = sub nsw i64 %272, 1
  %274 = getelementptr inbounds %struct.Test, ptr %271, i64 %273
  %275 = load i64, ptr %270, align 4
  %276 = load i64, ptr %274, align 4
  %277 = call zeroext i8 %267(i64 %275, i64 %276)
  %278 = icmp ne i8 %277, 0
  br i1 %278, label %279, label %1700

279:                                              ; preds = %266
  %280 = load i64, ptr %11, align 8
  %281 = load i64, ptr %12, align 8
  %282 = call { i64, i64 } @MakeRange(i64 noundef %280, i64 noundef %281)
  %283 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 0
  %284 = extractvalue { i64, i64 } %282, 0
  store i64 %284, ptr %283, align 8
  %285 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 1
  %286 = extractvalue { i64, i64 } %282, 1
  store i64 %286, ptr %285, align 8
  %287 = load i64, ptr %12, align 8
  %288 = load i64, ptr %13, align 8
  %289 = call { i64, i64 } @MakeRange(i64 noundef %287, i64 noundef %288)
  %290 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 0
  %291 = extractvalue { i64, i64 } %289, 0
  store i64 %291, ptr %290, align 8
  %292 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 1
  %293 = extractvalue { i64, i64 } %289, 1
  store i64 %293, ptr %292, align 8
  %294 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 0
  %295 = load i64, ptr %294, align 8
  %296 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 1
  %297 = load i64, ptr %296, align 8
  %298 = call i64 @Range_length(i64 %295, i64 %297)
  %299 = icmp sle i64 %298, 512
  br i1 %299, label %300, label %328

300:                                              ; preds = %279
  %301 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %302 = load ptr, ptr %4, align 8
  %303 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %304 = load i64, ptr %303, align 8
  %305 = getelementptr inbounds %struct.Test, ptr %302, i64 %304
  %306 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 0
  %307 = load i64, ptr %306, align 8
  %308 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 1
  %309 = load i64, ptr %308, align 8
  %310 = call i64 @Range_length(i64 %307, i64 %309)
  %311 = mul i64 %310, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %301, ptr align 4 %305, i64 %311, i1 false)
  %312 = load ptr, ptr %4, align 8
  %313 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef 0)
  %314 = getelementptr inbounds nuw { i64, i64 }, ptr %44, i32 0, i32 0
  %315 = extractvalue { i64, i64 } %313, 0
  store i64 %315, ptr %314, align 8
  %316 = getelementptr inbounds nuw { i64, i64 }, ptr %44, i32 0, i32 1
  %317 = extractvalue { i64, i64 } %313, 1
  store i64 %317, ptr %316, align 8
  %318 = load ptr, ptr %6, align 8
  %319 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %320 = getelementptr inbounds nuw { i64, i64 }, ptr %44, i32 0, i32 0
  %321 = load i64, ptr %320, align 8
  %322 = getelementptr inbounds nuw { i64, i64 }, ptr %44, i32 0, i32 1
  %323 = load i64, ptr %322, align 8
  %324 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 0
  %325 = load i64, ptr %324, align 8
  %326 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 1
  %327 = load i64, ptr %326, align 8
  call void @WikiMerge(ptr noundef %312, i64 %321, i64 %323, i64 %325, i64 %327, ptr noundef byval(%struct.Range) align 8 %43, ptr noundef %318, ptr noundef %319, i64 noundef 512)
  br label %197, !llvm.loop !14

328:                                              ; preds = %279
  %329 = getelementptr inbounds nuw { i64, i64 }, ptr %24, i32 0, i32 0
  %330 = load i64, ptr %329, align 8
  %331 = getelementptr inbounds nuw { i64, i64 }, ptr %24, i32 0, i32 1
  %332 = load i64, ptr %331, align 8
  %333 = call i64 @Range_length(i64 %330, i64 %332)
  %334 = icmp sgt i64 %333, 0
  br i1 %334, label %335, label %354

335:                                              ; preds = %328
  %336 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %337 = load i64, ptr %336, align 8
  %338 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %339 = load i64, ptr %338, align 8
  %340 = call { i64, i64 } @MakeRange(i64 noundef %337, i64 noundef %339)
  %341 = getelementptr inbounds nuw { i64, i64 }, ptr %45, i32 0, i32 0
  %342 = extractvalue { i64, i64 } %340, 0
  store i64 %342, ptr %341, align 8
  %343 = getelementptr inbounds nuw { i64, i64 }, ptr %45, i32 0, i32 1
  %344 = extractvalue { i64, i64 } %340, 1
  store i64 %344, ptr %343, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %45, i64 16, i1 false)
  %345 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %346 = load i64, ptr %345, align 8
  %347 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %348 = load i64, ptr %347, align 8
  %349 = call { i64, i64 } @MakeRange(i64 noundef %346, i64 noundef %348)
  %350 = getelementptr inbounds nuw { i64, i64 }, ptr %46, i32 0, i32 0
  %351 = extractvalue { i64, i64 } %349, 0
  store i64 %351, ptr %350, align 8
  %352 = getelementptr inbounds nuw { i64, i64 }, ptr %46, i32 0, i32 1
  %353 = extractvalue { i64, i64 } %349, 1
  store i64 %353, ptr %352, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %46, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %24, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %25, i64 16, i1 false)
  br label %1242

354:                                              ; preds = %328
  store i64 1, ptr %47, align 8
  %355 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %356 = load i64, ptr %355, align 8
  %357 = add nsw i64 %356, 1
  %358 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  store i64 %357, ptr %358, align 8
  br label %359

359:                                              ; preds = %405, %354
  %360 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %361 = load i64, ptr %360, align 8
  %362 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 1
  %363 = load i64, ptr %362, align 8
  %364 = icmp slt i64 %361, %363
  br i1 %364, label %365, label %409

365:                                              ; preds = %359
  %366 = load ptr, ptr %6, align 8
  %367 = load ptr, ptr %4, align 8
  %368 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %369 = load i64, ptr %368, align 8
  %370 = sub nsw i64 %369, 1
  %371 = getelementptr inbounds %struct.Test, ptr %367, i64 %370
  %372 = load ptr, ptr %4, align 8
  %373 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %374 = load i64, ptr %373, align 8
  %375 = getelementptr inbounds %struct.Test, ptr %372, i64 %374
  %376 = load i64, ptr %371, align 4
  %377 = load i64, ptr %375, align 4
  %378 = call zeroext i8 %366(i64 %376, i64 %377)
  %379 = zext i8 %378 to i32
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %397, label %381

381:                                              ; preds = %365
  %382 = load ptr, ptr %6, align 8
  %383 = load ptr, ptr %4, align 8
  %384 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %385 = load i64, ptr %384, align 8
  %386 = getelementptr inbounds %struct.Test, ptr %383, i64 %385
  %387 = load ptr, ptr %4, align 8
  %388 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %389 = load i64, ptr %388, align 8
  %390 = sub nsw i64 %389, 1
  %391 = getelementptr inbounds %struct.Test, ptr %387, i64 %390
  %392 = load i64, ptr %386, align 4
  %393 = load i64, ptr %391, align 4
  %394 = call zeroext i8 %382(i64 %392, i64 %393)
  %395 = zext i8 %394 to i32
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %404

397:                                              ; preds = %381, %365
  %398 = load i64, ptr %47, align 8
  %399 = add nsw i64 %398, 1
  store i64 %399, ptr %47, align 8
  %400 = load i64, ptr %23, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  br label %409

403:                                              ; preds = %397
  br label %404

404:                                              ; preds = %403, %381
  br label %405

405:                                              ; preds = %404
  %406 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %407 = load i64, ptr %406, align 8
  %408 = add nsw i64 %407, 1
  store i64 %408, ptr %406, align 8
  br label %359, !llvm.loop !15

409:                                              ; preds = %402, %359
  %410 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %411 = load i64, ptr %410, align 8
  %412 = load i64, ptr %47, align 8
  %413 = add nsw i64 %411, %412
  %414 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 1
  store i64 %413, ptr %414, align 8
  %415 = load i64, ptr %23, align 8
  %416 = icmp sle i64 %415, 512
  br i1 %416, label %417, label %577

417:                                              ; preds = %409
  %418 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %419 = load i64, ptr %418, align 8
  %420 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %421 = load i64, ptr %420, align 8
  %422 = call { i64, i64 } @MakeRange(i64 noundef %419, i64 noundef %421)
  %423 = getelementptr inbounds nuw { i64, i64 }, ptr %49, i32 0, i32 0
  %424 = extractvalue { i64, i64 } %422, 0
  store i64 %424, ptr %423, align 8
  %425 = getelementptr inbounds nuw { i64, i64 }, ptr %49, i32 0, i32 1
  %426 = extractvalue { i64, i64 } %422, 1
  store i64 %426, ptr %425, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %49, i64 16, i1 false)
  %427 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 0
  %428 = load i64, ptr %427, align 8
  %429 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 1
  %430 = load i64, ptr %429, align 8
  %431 = call i64 @Range_length(i64 %428, i64 %430)
  %432 = load i64, ptr %23, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %466

434:                                              ; preds = %417
  %435 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %436 = load i64, ptr %435, align 8
  %437 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %438 = load i64, ptr %437, align 8
  %439 = load i64, ptr %23, align 8
  %440 = add nsw i64 %438, %439
  %441 = call { i64, i64 } @MakeRange(i64 noundef %436, i64 noundef %440)
  %442 = getelementptr inbounds nuw { i64, i64 }, ptr %50, i32 0, i32 0
  %443 = extractvalue { i64, i64 } %441, 0
  store i64 %443, ptr %442, align 8
  %444 = getelementptr inbounds nuw { i64, i64 }, ptr %50, i32 0, i32 1
  %445 = extractvalue { i64, i64 } %441, 1
  store i64 %445, ptr %444, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %50, i64 16, i1 false)
  %446 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %447 = load i64, ptr %446, align 8
  %448 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %449 = load i64, ptr %448, align 8
  %450 = call { i64, i64 } @MakeRange(i64 noundef %447, i64 noundef %449)
  %451 = getelementptr inbounds nuw { i64, i64 }, ptr %51, i32 0, i32 0
  %452 = extractvalue { i64, i64 } %450, 0
  store i64 %452, ptr %451, align 8
  %453 = getelementptr inbounds nuw { i64, i64 }, ptr %51, i32 0, i32 1
  %454 = extractvalue { i64, i64 } %450, 1
  store i64 %454, ptr %453, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %51, i64 16, i1 false)
  %455 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %456 = load i64, ptr %455, align 8
  %457 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %458 = load i64, ptr %457, align 8
  %459 = load i64, ptr %23, align 8
  %460 = add nsw i64 %458, %459
  %461 = call { i64, i64 } @MakeRange(i64 noundef %456, i64 noundef %460)
  %462 = getelementptr inbounds nuw { i64, i64 }, ptr %52, i32 0, i32 0
  %463 = extractvalue { i64, i64 } %461, 0
  store i64 %463, ptr %462, align 8
  %464 = getelementptr inbounds nuw { i64, i64 }, ptr %52, i32 0, i32 1
  %465 = extractvalue { i64, i64 } %461, 1
  store i64 %465, ptr %464, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %52, i64 16, i1 false)
  br label %576

466:                                              ; preds = %417
  %467 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %468 = load i64, ptr %467, align 8
  %469 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %470 = load i64, ptr %469, align 8
  %471 = call { i64, i64 } @MakeRange(i64 noundef %468, i64 noundef %470)
  %472 = getelementptr inbounds nuw { i64, i64 }, ptr %53, i32 0, i32 0
  %473 = extractvalue { i64, i64 } %471, 0
  store i64 %473, ptr %472, align 8
  %474 = getelementptr inbounds nuw { i64, i64 }, ptr %53, i32 0, i32 1
  %475 = extractvalue { i64, i64 } %471, 1
  store i64 %475, ptr %474, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %53, i64 16, i1 false)
  %476 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %477 = load i64, ptr %476, align 8
  %478 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %479 = load i64, ptr %478, align 8
  %480 = call { i64, i64 } @MakeRange(i64 noundef %477, i64 noundef %479)
  %481 = getelementptr inbounds nuw { i64, i64 }, ptr %54, i32 0, i32 0
  %482 = extractvalue { i64, i64 } %480, 0
  store i64 %482, ptr %481, align 8
  %483 = getelementptr inbounds nuw { i64, i64 }, ptr %54, i32 0, i32 1
  %484 = extractvalue { i64, i64 } %480, 1
  store i64 %484, ptr %483, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %54, i64 16, i1 false)
  store i64 1, ptr %47, align 8
  %485 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %486 = load i64, ptr %485, align 8
  %487 = sub nsw i64 %486, 2
  %488 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  store i64 %487, ptr %488, align 8
  br label %489

489:                                              ; preds = %535, %466
  %490 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %491 = load i64, ptr %490, align 8
  %492 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %493 = load i64, ptr %492, align 8
  %494 = icmp sge i64 %491, %493
  br i1 %494, label %495, label %539

495:                                              ; preds = %489
  %496 = load ptr, ptr %6, align 8
  %497 = load ptr, ptr %4, align 8
  %498 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %499 = load i64, ptr %498, align 8
  %500 = getelementptr inbounds %struct.Test, ptr %497, i64 %499
  %501 = load ptr, ptr %4, align 8
  %502 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %503 = load i64, ptr %502, align 8
  %504 = add nsw i64 %503, 1
  %505 = getelementptr inbounds %struct.Test, ptr %501, i64 %504
  %506 = load i64, ptr %500, align 4
  %507 = load i64, ptr %505, align 4
  %508 = call zeroext i8 %496(i64 %506, i64 %507)
  %509 = zext i8 %508 to i32
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %527, label %511

511:                                              ; preds = %495
  %512 = load ptr, ptr %6, align 8
  %513 = load ptr, ptr %4, align 8
  %514 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %515 = load i64, ptr %514, align 8
  %516 = add nsw i64 %515, 1
  %517 = getelementptr inbounds %struct.Test, ptr %513, i64 %516
  %518 = load ptr, ptr %4, align 8
  %519 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %520 = load i64, ptr %519, align 8
  %521 = getelementptr inbounds %struct.Test, ptr %518, i64 %520
  %522 = load i64, ptr %517, align 4
  %523 = load i64, ptr %521, align 4
  %524 = call zeroext i8 %512(i64 %522, i64 %523)
  %525 = zext i8 %524 to i32
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %534

527:                                              ; preds = %511, %495
  %528 = load i64, ptr %47, align 8
  %529 = add nsw i64 %528, 1
  store i64 %529, ptr %47, align 8
  %530 = load i64, ptr %23, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %533

532:                                              ; preds = %527
  br label %539

533:                                              ; preds = %527
  br label %534

534:                                              ; preds = %533, %511
  br label %535

535:                                              ; preds = %534
  %536 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %537 = load i64, ptr %536, align 8
  %538 = add nsw i64 %537, -1
  store i64 %538, ptr %536, align 8
  br label %489, !llvm.loop !16

539:                                              ; preds = %532, %489
  %540 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %541 = load i64, ptr %540, align 8
  %542 = load i64, ptr %47, align 8
  %543 = add nsw i64 %541, %542
  %544 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 1
  store i64 %543, ptr %544, align 8
  %545 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 0
  %546 = load i64, ptr %545, align 8
  %547 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 1
  %548 = load i64, ptr %547, align 8
  %549 = call i64 @Range_length(i64 %546, i64 %548)
  %550 = load i64, ptr %23, align 8
  %551 = icmp eq i64 %549, %550
  br i1 %551, label %552, label %575

552:                                              ; preds = %539
  %553 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %554 = load i64, ptr %553, align 8
  %555 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %556 = load i64, ptr %555, align 8
  %557 = load i64, ptr %23, align 8
  %558 = add nsw i64 %556, %557
  %559 = call { i64, i64 } @MakeRange(i64 noundef %554, i64 noundef %558)
  %560 = getelementptr inbounds nuw { i64, i64 }, ptr %55, i32 0, i32 0
  %561 = extractvalue { i64, i64 } %559, 0
  store i64 %561, ptr %560, align 8
  %562 = getelementptr inbounds nuw { i64, i64 }, ptr %55, i32 0, i32 1
  %563 = extractvalue { i64, i64 } %559, 1
  store i64 %563, ptr %562, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %55, i64 16, i1 false)
  %564 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %565 = load i64, ptr %564, align 8
  %566 = load i64, ptr %23, align 8
  %567 = sub nsw i64 %565, %566
  %568 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %569 = load i64, ptr %568, align 8
  %570 = call { i64, i64 } @MakeRange(i64 noundef %567, i64 noundef %569)
  %571 = getelementptr inbounds nuw { i64, i64 }, ptr %56, i32 0, i32 0
  %572 = extractvalue { i64, i64 } %570, 0
  store i64 %572, ptr %571, align 8
  %573 = getelementptr inbounds nuw { i64, i64 }, ptr %56, i32 0, i32 1
  %574 = extractvalue { i64, i64 } %570, 1
  store i64 %574, ptr %573, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %56, i64 16, i1 false)
  br label %575

575:                                              ; preds = %552, %539
  br label %576

576:                                              ; preds = %575, %434
  br label %997

577:                                              ; preds = %409
  store i64 0, ptr %47, align 8
  %578 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %579 = load i64, ptr %578, align 8
  %580 = add nsw i64 %579, 1
  %581 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  store i64 %580, ptr %581, align 8
  br label %582

582:                                              ; preds = %628, %577
  %583 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %584 = load i64, ptr %583, align 8
  %585 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 1
  %586 = load i64, ptr %585, align 8
  %587 = icmp slt i64 %584, %586
  br i1 %587, label %588, label %632

588:                                              ; preds = %582
  %589 = load ptr, ptr %6, align 8
  %590 = load ptr, ptr %4, align 8
  %591 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %592 = load i64, ptr %591, align 8
  %593 = sub nsw i64 %592, 1
  %594 = getelementptr inbounds %struct.Test, ptr %590, i64 %593
  %595 = load ptr, ptr %4, align 8
  %596 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %597 = load i64, ptr %596, align 8
  %598 = getelementptr inbounds %struct.Test, ptr %595, i64 %597
  %599 = load i64, ptr %594, align 4
  %600 = load i64, ptr %598, align 4
  %601 = call zeroext i8 %589(i64 %599, i64 %600)
  %602 = zext i8 %601 to i32
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %620, label %604

604:                                              ; preds = %588
  %605 = load ptr, ptr %6, align 8
  %606 = load ptr, ptr %4, align 8
  %607 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %608 = load i64, ptr %607, align 8
  %609 = getelementptr inbounds %struct.Test, ptr %606, i64 %608
  %610 = load ptr, ptr %4, align 8
  %611 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %612 = load i64, ptr %611, align 8
  %613 = sub nsw i64 %612, 1
  %614 = getelementptr inbounds %struct.Test, ptr %610, i64 %613
  %615 = load i64, ptr %609, align 4
  %616 = load i64, ptr %614, align 4
  %617 = call zeroext i8 %605(i64 %615, i64 %616)
  %618 = zext i8 %617 to i32
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %627

620:                                              ; preds = %604, %588
  %621 = load i64, ptr %47, align 8
  %622 = add nsw i64 %621, 1
  store i64 %622, ptr %47, align 8
  %623 = load i64, ptr %23, align 8
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %620
  br label %632

626:                                              ; preds = %620
  br label %627

627:                                              ; preds = %626, %604
  br label %628

628:                                              ; preds = %627
  %629 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %630 = load i64, ptr %629, align 8
  %631 = add nsw i64 %630, 1
  store i64 %631, ptr %629, align 8
  br label %582, !llvm.loop !17

632:                                              ; preds = %625, %582
  %633 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %634 = load i64, ptr %633, align 8
  %635 = load i64, ptr %47, align 8
  %636 = add nsw i64 %634, %635
  %637 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 1
  store i64 %636, ptr %637, align 8
  %638 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 0
  %639 = load i64, ptr %638, align 8
  %640 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 1
  %641 = load i64, ptr %640, align 8
  %642 = call i64 @Range_length(i64 %639, i64 %641)
  %643 = load i64, ptr %23, align 8
  %644 = icmp eq i64 %642, %643
  br i1 %644, label %645, label %692

645:                                              ; preds = %632
  %646 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %647 = load i64, ptr %646, align 8
  %648 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %649 = load i64, ptr %648, align 8
  %650 = load i64, ptr %23, align 8
  %651 = mul nsw i64 %650, 2
  %652 = add nsw i64 %649, %651
  %653 = call { i64, i64 } @MakeRange(i64 noundef %647, i64 noundef %652)
  %654 = getelementptr inbounds nuw { i64, i64 }, ptr %57, i32 0, i32 0
  %655 = extractvalue { i64, i64 } %653, 0
  store i64 %655, ptr %654, align 8
  %656 = getelementptr inbounds nuw { i64, i64 }, ptr %57, i32 0, i32 1
  %657 = extractvalue { i64, i64 } %653, 1
  store i64 %657, ptr %656, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %57, i64 16, i1 false)
  %658 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %659 = load i64, ptr %658, align 8
  %660 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %661 = load i64, ptr %660, align 8
  %662 = call { i64, i64 } @MakeRange(i64 noundef %659, i64 noundef %661)
  %663 = getelementptr inbounds nuw { i64, i64 }, ptr %58, i32 0, i32 0
  %664 = extractvalue { i64, i64 } %662, 0
  store i64 %664, ptr %663, align 8
  %665 = getelementptr inbounds nuw { i64, i64 }, ptr %58, i32 0, i32 1
  %666 = extractvalue { i64, i64 } %662, 1
  store i64 %666, ptr %665, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %58, i64 16, i1 false)
  %667 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %668 = load i64, ptr %667, align 8
  %669 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %670 = load i64, ptr %669, align 8
  %671 = load i64, ptr %23, align 8
  %672 = add nsw i64 %670, %671
  %673 = call { i64, i64 } @MakeRange(i64 noundef %668, i64 noundef %672)
  %674 = getelementptr inbounds nuw { i64, i64 }, ptr %59, i32 0, i32 0
  %675 = extractvalue { i64, i64 } %673, 0
  store i64 %675, ptr %674, align 8
  %676 = getelementptr inbounds nuw { i64, i64 }, ptr %59, i32 0, i32 1
  %677 = extractvalue { i64, i64 } %673, 1
  store i64 %677, ptr %676, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %59, i64 16, i1 false)
  %678 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %679 = load i64, ptr %678, align 8
  %680 = load i64, ptr %23, align 8
  %681 = add nsw i64 %679, %680
  %682 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %683 = load i64, ptr %682, align 8
  %684 = load i64, ptr %23, align 8
  %685 = mul nsw i64 %684, 2
  %686 = add nsw i64 %683, %685
  %687 = call { i64, i64 } @MakeRange(i64 noundef %681, i64 noundef %686)
  %688 = getelementptr inbounds nuw { i64, i64 }, ptr %60, i32 0, i32 0
  %689 = extractvalue { i64, i64 } %687, 0
  store i64 %689, ptr %688, align 8
  %690 = getelementptr inbounds nuw { i64, i64 }, ptr %60, i32 0, i32 1
  %691 = extractvalue { i64, i64 } %687, 1
  store i64 %691, ptr %690, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %60, i64 16, i1 false)
  br label %996

692:                                              ; preds = %632
  %693 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 0
  %694 = load i64, ptr %693, align 8
  %695 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 1
  %696 = load i64, ptr %695, align 8
  %697 = call i64 @Range_length(i64 %694, i64 %696)
  %698 = load i64, ptr %23, align 8
  %699 = icmp eq i64 %697, %698
  br i1 %699, label %700, label %818

700:                                              ; preds = %692
  %701 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %702 = load i64, ptr %701, align 8
  %703 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %704 = load i64, ptr %703, align 8
  %705 = load i64, ptr %23, align 8
  %706 = add nsw i64 %704, %705
  %707 = call { i64, i64 } @MakeRange(i64 noundef %702, i64 noundef %706)
  %708 = getelementptr inbounds nuw { i64, i64 }, ptr %61, i32 0, i32 0
  %709 = extractvalue { i64, i64 } %707, 0
  store i64 %709, ptr %708, align 8
  %710 = getelementptr inbounds nuw { i64, i64 }, ptr %61, i32 0, i32 1
  %711 = extractvalue { i64, i64 } %707, 1
  store i64 %711, ptr %710, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %61, i64 16, i1 false)
  %712 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %713 = load i64, ptr %712, align 8
  %714 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %715 = load i64, ptr %714, align 8
  %716 = load i64, ptr %23, align 8
  %717 = add nsw i64 %715, %716
  %718 = call { i64, i64 } @MakeRange(i64 noundef %713, i64 noundef %717)
  %719 = getelementptr inbounds nuw { i64, i64 }, ptr %62, i32 0, i32 0
  %720 = extractvalue { i64, i64 } %718, 0
  store i64 %720, ptr %719, align 8
  %721 = getelementptr inbounds nuw { i64, i64 }, ptr %62, i32 0, i32 1
  %722 = extractvalue { i64, i64 } %718, 1
  store i64 %722, ptr %721, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %62, i64 16, i1 false)
  store i64 1, ptr %47, align 8
  %723 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %724 = load i64, ptr %723, align 8
  %725 = sub nsw i64 %724, 2
  %726 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  store i64 %725, ptr %726, align 8
  br label %727

727:                                              ; preds = %773, %700
  %728 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %729 = load i64, ptr %728, align 8
  %730 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %731 = load i64, ptr %730, align 8
  %732 = icmp sge i64 %729, %731
  br i1 %732, label %733, label %777

733:                                              ; preds = %727
  %734 = load ptr, ptr %6, align 8
  %735 = load ptr, ptr %4, align 8
  %736 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %737 = load i64, ptr %736, align 8
  %738 = getelementptr inbounds %struct.Test, ptr %735, i64 %737
  %739 = load ptr, ptr %4, align 8
  %740 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %741 = load i64, ptr %740, align 8
  %742 = add nsw i64 %741, 1
  %743 = getelementptr inbounds %struct.Test, ptr %739, i64 %742
  %744 = load i64, ptr %738, align 4
  %745 = load i64, ptr %743, align 4
  %746 = call zeroext i8 %734(i64 %744, i64 %745)
  %747 = zext i8 %746 to i32
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %765, label %749

749:                                              ; preds = %733
  %750 = load ptr, ptr %6, align 8
  %751 = load ptr, ptr %4, align 8
  %752 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %753 = load i64, ptr %752, align 8
  %754 = add nsw i64 %753, 1
  %755 = getelementptr inbounds %struct.Test, ptr %751, i64 %754
  %756 = load ptr, ptr %4, align 8
  %757 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %758 = load i64, ptr %757, align 8
  %759 = getelementptr inbounds %struct.Test, ptr %756, i64 %758
  %760 = load i64, ptr %755, align 4
  %761 = load i64, ptr %759, align 4
  %762 = call zeroext i8 %750(i64 %760, i64 %761)
  %763 = zext i8 %762 to i32
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %772

765:                                              ; preds = %749, %733
  %766 = load i64, ptr %47, align 8
  %767 = add nsw i64 %766, 1
  store i64 %767, ptr %47, align 8
  %768 = load i64, ptr %23, align 8
  %769 = icmp eq i64 %767, %768
  br i1 %769, label %770, label %771

770:                                              ; preds = %765
  br label %777

771:                                              ; preds = %765
  br label %772

772:                                              ; preds = %771, %749
  br label %773

773:                                              ; preds = %772
  %774 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %775 = load i64, ptr %774, align 8
  %776 = add nsw i64 %775, -1
  store i64 %776, ptr %774, align 8
  br label %727, !llvm.loop !18

777:                                              ; preds = %770, %727
  %778 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %779 = load i64, ptr %778, align 8
  %780 = load i64, ptr %47, align 8
  %781 = add nsw i64 %779, %780
  %782 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 1
  store i64 %781, ptr %782, align 8
  %783 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 0
  %784 = load i64, ptr %783, align 8
  %785 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 1
  %786 = load i64, ptr %785, align 8
  %787 = call i64 @Range_length(i64 %784, i64 %786)
  %788 = load i64, ptr %23, align 8
  %789 = icmp eq i64 %787, %788
  br i1 %789, label %790, label %813

790:                                              ; preds = %777
  %791 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %792 = load i64, ptr %791, align 8
  %793 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %794 = load i64, ptr %793, align 8
  %795 = load i64, ptr %23, align 8
  %796 = add nsw i64 %794, %795
  %797 = call { i64, i64 } @MakeRange(i64 noundef %792, i64 noundef %796)
  %798 = getelementptr inbounds nuw { i64, i64 }, ptr %63, i32 0, i32 0
  %799 = extractvalue { i64, i64 } %797, 0
  store i64 %799, ptr %798, align 8
  %800 = getelementptr inbounds nuw { i64, i64 }, ptr %63, i32 0, i32 1
  %801 = extractvalue { i64, i64 } %797, 1
  store i64 %801, ptr %800, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %63, i64 16, i1 false)
  %802 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %803 = load i64, ptr %802, align 8
  %804 = load i64, ptr %23, align 8
  %805 = sub nsw i64 %803, %804
  %806 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %807 = load i64, ptr %806, align 8
  %808 = call { i64, i64 } @MakeRange(i64 noundef %805, i64 noundef %807)
  %809 = getelementptr inbounds nuw { i64, i64 }, ptr %64, i32 0, i32 0
  %810 = extractvalue { i64, i64 } %808, 0
  store i64 %810, ptr %809, align 8
  %811 = getelementptr inbounds nuw { i64, i64 }, ptr %64, i32 0, i32 1
  %812 = extractvalue { i64, i64 } %808, 1
  store i64 %812, ptr %811, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %64, i64 16, i1 false)
  br label %817

813:                                              ; preds = %777
  %814 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %815 = load i64, ptr %814, align 8
  %816 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 1
  store i64 %815, ptr %816, align 8
  br label %817

817:                                              ; preds = %813, %790
  br label %995

818:                                              ; preds = %692
  store i64 1, ptr %47, align 8
  %819 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %820 = load i64, ptr %819, align 8
  %821 = sub nsw i64 %820, 2
  %822 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  store i64 %821, ptr %822, align 8
  br label %823

823:                                              ; preds = %869, %818
  %824 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %825 = load i64, ptr %824, align 8
  %826 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %827 = load i64, ptr %826, align 8
  %828 = icmp sge i64 %825, %827
  br i1 %828, label %829, label %873

829:                                              ; preds = %823
  %830 = load ptr, ptr %6, align 8
  %831 = load ptr, ptr %4, align 8
  %832 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %833 = load i64, ptr %832, align 8
  %834 = getelementptr inbounds %struct.Test, ptr %831, i64 %833
  %835 = load ptr, ptr %4, align 8
  %836 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %837 = load i64, ptr %836, align 8
  %838 = add nsw i64 %837, 1
  %839 = getelementptr inbounds %struct.Test, ptr %835, i64 %838
  %840 = load i64, ptr %834, align 4
  %841 = load i64, ptr %839, align 4
  %842 = call zeroext i8 %830(i64 %840, i64 %841)
  %843 = zext i8 %842 to i32
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %861, label %845

845:                                              ; preds = %829
  %846 = load ptr, ptr %6, align 8
  %847 = load ptr, ptr %4, align 8
  %848 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %849 = load i64, ptr %848, align 8
  %850 = add nsw i64 %849, 1
  %851 = getelementptr inbounds %struct.Test, ptr %847, i64 %850
  %852 = load ptr, ptr %4, align 8
  %853 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %854 = load i64, ptr %853, align 8
  %855 = getelementptr inbounds %struct.Test, ptr %852, i64 %854
  %856 = load i64, ptr %851, align 4
  %857 = load i64, ptr %855, align 4
  %858 = call zeroext i8 %846(i64 %856, i64 %857)
  %859 = zext i8 %858 to i32
  %860 = icmp ne i32 %859, 0
  br i1 %860, label %861, label %868

861:                                              ; preds = %845, %829
  %862 = load i64, ptr %47, align 8
  %863 = add nsw i64 %862, 1
  store i64 %863, ptr %47, align 8
  %864 = load i64, ptr %23, align 8
  %865 = icmp eq i64 %863, %864
  br i1 %865, label %866, label %867

866:                                              ; preds = %861
  br label %873

867:                                              ; preds = %861
  br label %868

868:                                              ; preds = %867, %845
  br label %869

869:                                              ; preds = %868
  %870 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %871 = load i64, ptr %870, align 8
  %872 = add nsw i64 %871, -1
  store i64 %872, ptr %870, align 8
  br label %823, !llvm.loop !19

873:                                              ; preds = %866, %823
  %874 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %875 = load i64, ptr %874, align 8
  %876 = load i64, ptr %47, align 8
  %877 = add nsw i64 %875, %876
  %878 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 1
  store i64 %877, ptr %878, align 8
  store i64 0, ptr %47, align 8
  %879 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %880 = load i64, ptr %879, align 8
  %881 = sub nsw i64 %880, 1
  %882 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  store i64 %881, ptr %882, align 8
  br label %883

883:                                              ; preds = %929, %873
  %884 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %885 = load i64, ptr %884, align 8
  %886 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %887 = load i64, ptr %886, align 8
  %888 = icmp sge i64 %885, %887
  br i1 %888, label %889, label %933

889:                                              ; preds = %883
  %890 = load ptr, ptr %6, align 8
  %891 = load ptr, ptr %4, align 8
  %892 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %893 = load i64, ptr %892, align 8
  %894 = getelementptr inbounds %struct.Test, ptr %891, i64 %893
  %895 = load ptr, ptr %4, align 8
  %896 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %897 = load i64, ptr %896, align 8
  %898 = add nsw i64 %897, 1
  %899 = getelementptr inbounds %struct.Test, ptr %895, i64 %898
  %900 = load i64, ptr %894, align 4
  %901 = load i64, ptr %899, align 4
  %902 = call zeroext i8 %890(i64 %900, i64 %901)
  %903 = zext i8 %902 to i32
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %921, label %905

905:                                              ; preds = %889
  %906 = load ptr, ptr %6, align 8
  %907 = load ptr, ptr %4, align 8
  %908 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %909 = load i64, ptr %908, align 8
  %910 = add nsw i64 %909, 1
  %911 = getelementptr inbounds %struct.Test, ptr %907, i64 %910
  %912 = load ptr, ptr %4, align 8
  %913 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %914 = load i64, ptr %913, align 8
  %915 = getelementptr inbounds %struct.Test, ptr %912, i64 %914
  %916 = load i64, ptr %911, align 4
  %917 = load i64, ptr %915, align 4
  %918 = call zeroext i8 %906(i64 %916, i64 %917)
  %919 = zext i8 %918 to i32
  %920 = icmp ne i32 %919, 0
  br i1 %920, label %921, label %928

921:                                              ; preds = %905, %889
  %922 = load i64, ptr %47, align 8
  %923 = add nsw i64 %922, 1
  store i64 %923, ptr %47, align 8
  %924 = load i64, ptr %23, align 8
  %925 = icmp eq i64 %923, %924
  br i1 %925, label %926, label %927

926:                                              ; preds = %921
  br label %933

927:                                              ; preds = %921
  br label %928

928:                                              ; preds = %927, %905
  br label %929

929:                                              ; preds = %928
  %930 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %931 = load i64, ptr %930, align 8
  %932 = add nsw i64 %931, -1
  store i64 %932, ptr %930, align 8
  br label %883, !llvm.loop !20

933:                                              ; preds = %926, %883
  %934 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %935 = load i64, ptr %934, align 8
  %936 = load i64, ptr %47, align 8
  %937 = add nsw i64 %935, %936
  %938 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 1
  store i64 %937, ptr %938, align 8
  %939 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 0
  %940 = load i64, ptr %939, align 8
  %941 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 1
  %942 = load i64, ptr %941, align 8
  %943 = call i64 @Range_length(i64 %940, i64 %942)
  %944 = load i64, ptr %23, align 8
  %945 = icmp eq i64 %943, %944
  br i1 %945, label %946, label %990

946:                                              ; preds = %933
  %947 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %948 = load i64, ptr %947, align 8
  %949 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %950 = load i64, ptr %949, align 8
  %951 = call { i64, i64 } @MakeRange(i64 noundef %948, i64 noundef %950)
  %952 = getelementptr inbounds nuw { i64, i64 }, ptr %65, i32 0, i32 0
  %953 = extractvalue { i64, i64 } %951, 0
  store i64 %953, ptr %952, align 8
  %954 = getelementptr inbounds nuw { i64, i64 }, ptr %65, i32 0, i32 1
  %955 = extractvalue { i64, i64 } %951, 1
  store i64 %955, ptr %954, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %65, i64 16, i1 false)
  %956 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %957 = load i64, ptr %956, align 8
  %958 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %959 = load i64, ptr %958, align 8
  %960 = load i64, ptr %23, align 8
  %961 = mul nsw i64 %960, 2
  %962 = add nsw i64 %959, %961
  %963 = call { i64, i64 } @MakeRange(i64 noundef %957, i64 noundef %962)
  %964 = getelementptr inbounds nuw { i64, i64 }, ptr %66, i32 0, i32 0
  %965 = extractvalue { i64, i64 } %963, 0
  store i64 %965, ptr %964, align 8
  %966 = getelementptr inbounds nuw { i64, i64 }, ptr %66, i32 0, i32 1
  %967 = extractvalue { i64, i64 } %963, 1
  store i64 %967, ptr %966, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %66, i64 16, i1 false)
  %968 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %969 = load i64, ptr %968, align 8
  %970 = load i64, ptr %23, align 8
  %971 = sub nsw i64 %969, %970
  %972 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %973 = load i64, ptr %972, align 8
  %974 = call { i64, i64 } @MakeRange(i64 noundef %971, i64 noundef %973)
  %975 = getelementptr inbounds nuw { i64, i64 }, ptr %67, i32 0, i32 0
  %976 = extractvalue { i64, i64 } %974, 0
  store i64 %976, ptr %975, align 8
  %977 = getelementptr inbounds nuw { i64, i64 }, ptr %67, i32 0, i32 1
  %978 = extractvalue { i64, i64 } %974, 1
  store i64 %978, ptr %977, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %67, i64 16, i1 false)
  %979 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %980 = load i64, ptr %979, align 8
  %981 = load i64, ptr %23, align 8
  %982 = sub nsw i64 %980, %981
  %983 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %984 = load i64, ptr %983, align 8
  %985 = call { i64, i64 } @MakeRange(i64 noundef %982, i64 noundef %984)
  %986 = getelementptr inbounds nuw { i64, i64 }, ptr %68, i32 0, i32 0
  %987 = extractvalue { i64, i64 } %985, 0
  store i64 %987, ptr %986, align 8
  %988 = getelementptr inbounds nuw { i64, i64 }, ptr %68, i32 0, i32 1
  %989 = extractvalue { i64, i64 } %985, 1
  store i64 %989, ptr %988, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %68, i64 16, i1 false)
  br label %994

990:                                              ; preds = %933
  %991 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %992 = load i64, ptr %991, align 8
  %993 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 1
  store i64 %992, ptr %993, align 8
  br label %994

994:                                              ; preds = %990, %946
  br label %995

995:                                              ; preds = %994, %817
  br label %996

996:                                              ; preds = %995, %645
  br label %997

997:                                              ; preds = %996, %576
  %998 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 0
  %999 = load i64, ptr %998, align 8
  %1000 = getelementptr inbounds nuw { i64, i64 }, ptr %31, i32 0, i32 1
  %1001 = load i64, ptr %1000, align 8
  %1002 = call i64 @Range_length(i64 %999, i64 %1001)
  %1003 = load i64, ptr %23, align 8
  %1004 = icmp slt i64 %1002, %1003
  br i1 %1004, label %1005, label %1073

1005:                                             ; preds = %997
  br label %1006

1006:                                             ; preds = %1022, %1005
  %1007 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 0
  %1008 = load i64, ptr %1007, align 8
  %1009 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 1
  %1010 = load i64, ptr %1009, align 8
  %1011 = call i64 @Range_length(i64 %1008, i64 %1010)
  %1012 = icmp sgt i64 %1011, 0
  br i1 %1012, label %1013, label %1020

1013:                                             ; preds = %1006
  %1014 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 0
  %1015 = load i64, ptr %1014, align 8
  %1016 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 1
  %1017 = load i64, ptr %1016, align 8
  %1018 = call i64 @Range_length(i64 %1015, i64 %1017)
  %1019 = icmp sgt i64 %1018, 0
  br label %1020

1020:                                             ; preds = %1013, %1006
  %1021 = phi i1 [ false, %1006 ], [ %1019, %1013 ]
  br i1 %1021, label %1022, label %1072

1022:                                             ; preds = %1020
  %1023 = load ptr, ptr %4, align 8
  %1024 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %1025 = load i64, ptr %1024, align 8
  %1026 = load ptr, ptr %6, align 8
  %1027 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 0
  %1028 = load i64, ptr %1027, align 8
  %1029 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 1
  %1030 = load i64, ptr %1029, align 8
  %1031 = call i64 @BinaryFirst(ptr noundef %1023, i64 noundef %1025, i64 %1028, i64 %1030, ptr noundef %1026)
  store i64 %1031, ptr %69, align 8
  %1032 = load i64, ptr %69, align 8
  %1033 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 1
  %1034 = load i64, ptr %1033, align 8
  %1035 = sub nsw i64 %1032, %1034
  store i64 %1035, ptr %70, align 8
  %1036 = load ptr, ptr %4, align 8
  %1037 = load i64, ptr %70, align 8
  %1038 = sub nsw i64 0, %1037
  %1039 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %1040 = load i64, ptr %1039, align 8
  %1041 = load i64, ptr %69, align 8
  %1042 = call { i64, i64 } @MakeRange(i64 noundef %1040, i64 noundef %1041)
  %1043 = getelementptr inbounds nuw { i64, i64 }, ptr %71, i32 0, i32 0
  %1044 = extractvalue { i64, i64 } %1042, 0
  store i64 %1044, ptr %1043, align 8
  %1045 = getelementptr inbounds nuw { i64, i64 }, ptr %71, i32 0, i32 1
  %1046 = extractvalue { i64, i64 } %1042, 1
  store i64 %1046, ptr %1045, align 8
  %1047 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1048 = getelementptr inbounds nuw { i64, i64 }, ptr %71, i32 0, i32 0
  %1049 = load i64, ptr %1048, align 8
  %1050 = getelementptr inbounds nuw { i64, i64 }, ptr %71, i32 0, i32 1
  %1051 = load i64, ptr %1050, align 8
  call void @Rotate(ptr noundef %1036, i64 noundef %1038, i64 %1049, i64 %1051, ptr noundef %1047, i64 noundef 512)
  %1052 = load i64, ptr %69, align 8
  %1053 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  store i64 %1052, ptr %1053, align 8
  %1054 = load ptr, ptr %4, align 8
  %1055 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %1056 = load i64, ptr %1055, align 8
  %1057 = load i64, ptr %70, align 8
  %1058 = add nsw i64 %1056, %1057
  %1059 = load ptr, ptr %6, align 8
  %1060 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 0
  %1061 = load i64, ptr %1060, align 8
  %1062 = getelementptr inbounds nuw { i64, i64 }, ptr %42, i32 0, i32 1
  %1063 = load i64, ptr %1062, align 8
  %1064 = call i64 @BinaryLast(ptr noundef %1054, i64 noundef %1058, i64 %1061, i64 %1063, ptr noundef %1059)
  %1065 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %1066 = load i64, ptr %1065, align 8
  %1067 = call { i64, i64 } @MakeRange(i64 noundef %1064, i64 noundef %1066)
  %1068 = getelementptr inbounds nuw { i64, i64 }, ptr %72, i32 0, i32 0
  %1069 = extractvalue { i64, i64 } %1067, 0
  store i64 %1069, ptr %1068, align 8
  %1070 = getelementptr inbounds nuw { i64, i64 }, ptr %72, i32 0, i32 1
  %1071 = extractvalue { i64, i64 } %1067, 1
  store i64 %1071, ptr %1070, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 8 %72, i64 16, i1 false)
  br label %1006, !llvm.loop !21

1072:                                             ; preds = %1020
  br label %197, !llvm.loop !14

1073:                                             ; preds = %997
  %1074 = getelementptr inbounds nuw { i64, i64 }, ptr %29, i32 0, i32 0
  %1075 = load i64, ptr %1074, align 8
  %1076 = getelementptr inbounds nuw { i64, i64 }, ptr %29, i32 0, i32 1
  %1077 = load i64, ptr %1076, align 8
  %1078 = call i64 @Range_length(i64 %1075, i64 %1077)
  store i64 %1078, ptr %48, align 8
  store i64 0, ptr %47, align 8
  %1079 = getelementptr inbounds nuw %struct.Range, ptr %29, i32 0, i32 0
  %1080 = load i64, ptr %1079, align 8
  store i64 %1080, ptr %9, align 8
  br label %1081

1081:                                             ; preds = %1144, %1073
  %1082 = load i64, ptr %47, align 8
  %1083 = load i64, ptr %48, align 8
  %1084 = icmp slt i64 %1082, %1083
  br i1 %1084, label %1085, label %1147

1085:                                             ; preds = %1081
  %1086 = load i64, ptr %9, align 8
  %1087 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %1088 = load i64, ptr %1087, align 8
  %1089 = icmp eq i64 %1086, %1088
  br i1 %1089, label %1118, label %1090

1090:                                             ; preds = %1085
  %1091 = load ptr, ptr %6, align 8
  %1092 = load ptr, ptr %4, align 8
  %1093 = load i64, ptr %9, align 8
  %1094 = sub nsw i64 %1093, 1
  %1095 = getelementptr inbounds %struct.Test, ptr %1092, i64 %1094
  %1096 = load ptr, ptr %4, align 8
  %1097 = load i64, ptr %9, align 8
  %1098 = getelementptr inbounds %struct.Test, ptr %1096, i64 %1097
  %1099 = load i64, ptr %1095, align 4
  %1100 = load i64, ptr %1098, align 4
  %1101 = call zeroext i8 %1091(i64 %1099, i64 %1100)
  %1102 = zext i8 %1101 to i32
  %1103 = icmp ne i32 %1102, 0
  br i1 %1103, label %1118, label %1104

1104:                                             ; preds = %1090
  %1105 = load ptr, ptr %6, align 8
  %1106 = load ptr, ptr %4, align 8
  %1107 = load i64, ptr %9, align 8
  %1108 = getelementptr inbounds %struct.Test, ptr %1106, i64 %1107
  %1109 = load ptr, ptr %4, align 8
  %1110 = load i64, ptr %9, align 8
  %1111 = sub nsw i64 %1110, 1
  %1112 = getelementptr inbounds %struct.Test, ptr %1109, i64 %1111
  %1113 = load i64, ptr %1108, align 4
  %1114 = load i64, ptr %1112, align 4
  %1115 = call zeroext i8 %1105(i64 %1113, i64 %1114)
  %1116 = zext i8 %1115 to i32
  %1117 = icmp ne i32 %1116, 0
  br i1 %1117, label %1118, label %1143

1118:                                             ; preds = %1104, %1090, %1085
  %1119 = load ptr, ptr %4, align 8
  %1120 = load i64, ptr %47, align 8
  %1121 = sub nsw i64 0, %1120
  %1122 = load i64, ptr %9, align 8
  %1123 = add nsw i64 %1122, 1
  %1124 = getelementptr inbounds nuw %struct.Range, ptr %29, i32 0, i32 0
  %1125 = load i64, ptr %1124, align 8
  %1126 = add nsw i64 %1125, 1
  %1127 = call { i64, i64 } @MakeRange(i64 noundef %1123, i64 noundef %1126)
  %1128 = getelementptr inbounds nuw { i64, i64 }, ptr %73, i32 0, i32 0
  %1129 = extractvalue { i64, i64 } %1127, 0
  store i64 %1129, ptr %1128, align 8
  %1130 = getelementptr inbounds nuw { i64, i64 }, ptr %73, i32 0, i32 1
  %1131 = extractvalue { i64, i64 } %1127, 1
  store i64 %1131, ptr %1130, align 8
  %1132 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1133 = getelementptr inbounds nuw { i64, i64 }, ptr %73, i32 0, i32 0
  %1134 = load i64, ptr %1133, align 8
  %1135 = getelementptr inbounds nuw { i64, i64 }, ptr %73, i32 0, i32 1
  %1136 = load i64, ptr %1135, align 8
  call void @Rotate(ptr noundef %1119, i64 noundef %1121, i64 %1134, i64 %1136, ptr noundef %1132, i64 noundef 512)
  %1137 = load i64, ptr %9, align 8
  %1138 = load i64, ptr %47, align 8
  %1139 = add nsw i64 %1137, %1138
  %1140 = getelementptr inbounds nuw %struct.Range, ptr %29, i32 0, i32 0
  store i64 %1139, ptr %1140, align 8
  %1141 = load i64, ptr %47, align 8
  %1142 = add nsw i64 %1141, 1
  store i64 %1142, ptr %47, align 8
  br label %1143

1143:                                             ; preds = %1118, %1104
  br label %1144

1144:                                             ; preds = %1143
  %1145 = load i64, ptr %9, align 8
  %1146 = add nsw i64 %1145, -1
  store i64 %1146, ptr %9, align 8
  br label %1081, !llvm.loop !22

1147:                                             ; preds = %1081
  %1148 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %1149 = load i64, ptr %1148, align 8
  %1150 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 0
  %1151 = load i64, ptr %1150, align 8
  %1152 = load i64, ptr %48, align 8
  %1153 = add nsw i64 %1151, %1152
  %1154 = call { i64, i64 } @MakeRange(i64 noundef %1149, i64 noundef %1153)
  %1155 = getelementptr inbounds nuw { i64, i64 }, ptr %74, i32 0, i32 0
  %1156 = extractvalue { i64, i64 } %1154, 0
  store i64 %1156, ptr %1155, align 8
  %1157 = getelementptr inbounds nuw { i64, i64 }, ptr %74, i32 0, i32 1
  %1158 = extractvalue { i64, i64 } %1154, 1
  store i64 %1158, ptr %1157, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %74, i64 16, i1 false)
  %1159 = getelementptr inbounds nuw { i64, i64 }, ptr %30, i32 0, i32 0
  %1160 = load i64, ptr %1159, align 8
  %1161 = getelementptr inbounds nuw { i64, i64 }, ptr %30, i32 0, i32 1
  %1162 = load i64, ptr %1161, align 8
  %1163 = call i64 @Range_length(i64 %1160, i64 %1162)
  store i64 %1163, ptr %48, align 8
  store i64 0, ptr %47, align 8
  %1164 = getelementptr inbounds nuw %struct.Range, ptr %30, i32 0, i32 0
  %1165 = load i64, ptr %1164, align 8
  store i64 %1165, ptr %9, align 8
  br label %1166

1166:                                             ; preds = %1227, %1147
  %1167 = load i64, ptr %47, align 8
  %1168 = load i64, ptr %48, align 8
  %1169 = icmp slt i64 %1167, %1168
  br i1 %1169, label %1170, label %1230

1170:                                             ; preds = %1166
  %1171 = load i64, ptr %9, align 8
  %1172 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %1173 = load i64, ptr %1172, align 8
  %1174 = sub nsw i64 %1173, 1
  %1175 = icmp eq i64 %1171, %1174
  br i1 %1175, label %1204, label %1176

1176:                                             ; preds = %1170
  %1177 = load ptr, ptr %6, align 8
  %1178 = load ptr, ptr %4, align 8
  %1179 = load i64, ptr %9, align 8
  %1180 = getelementptr inbounds %struct.Test, ptr %1178, i64 %1179
  %1181 = load ptr, ptr %4, align 8
  %1182 = load i64, ptr %9, align 8
  %1183 = add nsw i64 %1182, 1
  %1184 = getelementptr inbounds %struct.Test, ptr %1181, i64 %1183
  %1185 = load i64, ptr %1180, align 4
  %1186 = load i64, ptr %1184, align 4
  %1187 = call zeroext i8 %1177(i64 %1185, i64 %1186)
  %1188 = zext i8 %1187 to i32
  %1189 = icmp ne i32 %1188, 0
  br i1 %1189, label %1204, label %1190

1190:                                             ; preds = %1176
  %1191 = load ptr, ptr %6, align 8
  %1192 = load ptr, ptr %4, align 8
  %1193 = load i64, ptr %9, align 8
  %1194 = add nsw i64 %1193, 1
  %1195 = getelementptr inbounds %struct.Test, ptr %1192, i64 %1194
  %1196 = load ptr, ptr %4, align 8
  %1197 = load i64, ptr %9, align 8
  %1198 = getelementptr inbounds %struct.Test, ptr %1196, i64 %1197
  %1199 = load i64, ptr %1195, align 4
  %1200 = load i64, ptr %1198, align 4
  %1201 = call zeroext i8 %1191(i64 %1199, i64 %1200)
  %1202 = zext i8 %1201 to i32
  %1203 = icmp ne i32 %1202, 0
  br i1 %1203, label %1204, label %1226

1204:                                             ; preds = %1190, %1176, %1170
  %1205 = load ptr, ptr %4, align 8
  %1206 = load i64, ptr %47, align 8
  %1207 = getelementptr inbounds nuw %struct.Range, ptr %30, i32 0, i32 0
  %1208 = load i64, ptr %1207, align 8
  %1209 = load i64, ptr %9, align 8
  %1210 = call { i64, i64 } @MakeRange(i64 noundef %1208, i64 noundef %1209)
  %1211 = getelementptr inbounds nuw { i64, i64 }, ptr %75, i32 0, i32 0
  %1212 = extractvalue { i64, i64 } %1210, 0
  store i64 %1212, ptr %1211, align 8
  %1213 = getelementptr inbounds nuw { i64, i64 }, ptr %75, i32 0, i32 1
  %1214 = extractvalue { i64, i64 } %1210, 1
  store i64 %1214, ptr %1213, align 8
  %1215 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1216 = getelementptr inbounds nuw { i64, i64 }, ptr %75, i32 0, i32 0
  %1217 = load i64, ptr %1216, align 8
  %1218 = getelementptr inbounds nuw { i64, i64 }, ptr %75, i32 0, i32 1
  %1219 = load i64, ptr %1218, align 8
  call void @Rotate(ptr noundef %1205, i64 noundef %1206, i64 %1217, i64 %1219, ptr noundef %1215, i64 noundef 512)
  %1220 = load i64, ptr %9, align 8
  %1221 = load i64, ptr %47, align 8
  %1222 = sub nsw i64 %1220, %1221
  %1223 = getelementptr inbounds nuw %struct.Range, ptr %30, i32 0, i32 0
  store i64 %1222, ptr %1223, align 8
  %1224 = load i64, ptr %47, align 8
  %1225 = add nsw i64 %1224, 1
  store i64 %1225, ptr %47, align 8
  br label %1226

1226:                                             ; preds = %1204, %1190
  br label %1227

1227:                                             ; preds = %1226
  %1228 = load i64, ptr %9, align 8
  %1229 = add nsw i64 %1228, 1
  store i64 %1229, ptr %9, align 8
  br label %1166, !llvm.loop !23

1230:                                             ; preds = %1166
  %1231 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %1232 = load i64, ptr %1231, align 8
  %1233 = load i64, ptr %48, align 8
  %1234 = sub nsw i64 %1232, %1233
  %1235 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %1236 = load i64, ptr %1235, align 8
  %1237 = call { i64, i64 } @MakeRange(i64 noundef %1234, i64 noundef %1236)
  %1238 = getelementptr inbounds nuw { i64, i64 }, ptr %76, i32 0, i32 0
  %1239 = extractvalue { i64, i64 } %1237, 0
  store i64 %1239, ptr %1238, align 8
  %1240 = getelementptr inbounds nuw { i64, i64 }, ptr %76, i32 0, i32 1
  %1241 = extractvalue { i64, i64 } %1237, 1
  store i64 %1241, ptr %1240, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %76, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %31, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %32, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %29, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %27, ptr align 8 %30, i64 16, i1 false)
  br label %1242

1242:                                             ; preds = %1230, %335
  %1243 = getelementptr inbounds nuw %struct.Range, ptr %29, i32 0, i32 1
  %1244 = load i64, ptr %1243, align 8
  %1245 = getelementptr inbounds nuw %struct.Range, ptr %42, i32 0, i32 1
  %1246 = load i64, ptr %1245, align 8
  %1247 = call { i64, i64 } @MakeRange(i64 noundef %1244, i64 noundef %1246)
  %1248 = getelementptr inbounds nuw { i64, i64 }, ptr %77, i32 0, i32 0
  %1249 = extractvalue { i64, i64 } %1247, 0
  store i64 %1249, ptr %1248, align 8
  %1250 = getelementptr inbounds nuw { i64, i64 }, ptr %77, i32 0, i32 1
  %1251 = extractvalue { i64, i64 } %1247, 1
  store i64 %1251, ptr %1250, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %77, i64 16, i1 false)
  %1252 = getelementptr inbounds nuw %struct.Range, ptr %29, i32 0, i32 1
  %1253 = load i64, ptr %1252, align 8
  %1254 = getelementptr inbounds nuw %struct.Range, ptr %29, i32 0, i32 1
  %1255 = load i64, ptr %1254, align 8
  %1256 = getelementptr inbounds nuw { i64, i64 }, ptr %33, i32 0, i32 0
  %1257 = load i64, ptr %1256, align 8
  %1258 = getelementptr inbounds nuw { i64, i64 }, ptr %33, i32 0, i32 1
  %1259 = load i64, ptr %1258, align 8
  %1260 = call i64 @Range_length(i64 %1257, i64 %1259)
  %1261 = load i64, ptr %22, align 8
  %1262 = srem i64 %1260, %1261
  %1263 = add nsw i64 %1255, %1262
  %1264 = call { i64, i64 } @MakeRange(i64 noundef %1253, i64 noundef %1263)
  %1265 = getelementptr inbounds nuw { i64, i64 }, ptr %78, i32 0, i32 0
  %1266 = extractvalue { i64, i64 } %1264, 0
  store i64 %1266, ptr %1265, align 8
  %1267 = getelementptr inbounds nuw { i64, i64 }, ptr %78, i32 0, i32 1
  %1268 = extractvalue { i64, i64 } %1264, 1
  store i64 %1268, ptr %1267, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %78, i64 16, i1 false)
  store i64 0, ptr %9, align 8
  %1269 = getelementptr inbounds nuw %struct.Range, ptr %35, i32 0, i32 1
  %1270 = load i64, ptr %1269, align 8
  %1271 = add nsw i64 %1270, 1
  store i64 %1271, ptr %38, align 8
  br label %1272

1272:                                             ; preds = %1291, %1242
  %1273 = load i64, ptr %38, align 8
  %1274 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 1
  %1275 = load i64, ptr %1274, align 8
  %1276 = icmp slt i64 %1273, %1275
  br i1 %1276, label %1277, label %1297

1277:                                             ; preds = %1272
  %1278 = load ptr, ptr %4, align 8
  %1279 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %1280 = load i64, ptr %1279, align 8
  %1281 = load i64, ptr %9, align 8
  %1282 = add nsw i64 %1280, %1281
  %1283 = getelementptr inbounds %struct.Test, ptr %1278, i64 %1282
  store ptr %1283, ptr %79, align 8
  %1284 = load ptr, ptr %4, align 8
  %1285 = load i64, ptr %38, align 8
  %1286 = getelementptr inbounds %struct.Test, ptr %1284, i64 %1285
  store ptr %1286, ptr %80, align 8
  %1287 = load ptr, ptr %79, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %81, ptr align 4 %1287, i64 8, i1 false)
  %1288 = load ptr, ptr %79, align 8
  %1289 = load ptr, ptr %80, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1288, ptr align 4 %1289, i64 8, i1 false)
  %1290 = load ptr, ptr %80, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1290, ptr align 4 %81, i64 8, i1 false)
  br label %1291

1291:                                             ; preds = %1277
  %1292 = load i64, ptr %9, align 8
  %1293 = add nsw i64 %1292, 1
  store i64 %1293, ptr %9, align 8
  %1294 = load i64, ptr %22, align 8
  %1295 = load i64, ptr %38, align 8
  %1296 = add nsw i64 %1295, %1294
  store i64 %1296, ptr %38, align 8
  br label %1272, !llvm.loop !24

1297:                                             ; preds = %1272
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %35, i64 16, i1 false)
  %1298 = call { i64, i64 } @MakeRange(i64 noundef 0, i64 noundef 0)
  %1299 = getelementptr inbounds nuw { i64, i64 }, ptr %82, i32 0, i32 0
  %1300 = extractvalue { i64, i64 } %1298, 0
  store i64 %1300, ptr %1299, align 8
  %1301 = getelementptr inbounds nuw { i64, i64 }, ptr %82, i32 0, i32 1
  %1302 = extractvalue { i64, i64 } %1298, 1
  store i64 %1302, ptr %1301, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %82, i64 16, i1 false)
  %1303 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %1304 = load i64, ptr %1303, align 8
  %1305 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 0
  %1306 = load i64, ptr %1305, align 8
  %1307 = load i64, ptr %22, align 8
  %1308 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 0
  %1309 = load i64, ptr %1308, align 8
  %1310 = getelementptr inbounds nuw { i64, i64 }, ptr %43, i32 0, i32 1
  %1311 = load i64, ptr %1310, align 8
  %1312 = call i64 @Range_length(i64 %1309, i64 %1311)
  %1313 = getelementptr inbounds nuw { i64, i64 }, ptr %30, i32 0, i32 0
  %1314 = load i64, ptr %1313, align 8
  %1315 = getelementptr inbounds nuw { i64, i64 }, ptr %30, i32 0, i32 1
  %1316 = load i64, ptr %1315, align 8
  %1317 = call i64 @Range_length(i64 %1314, i64 %1316)
  %1318 = sub nsw i64 %1312, %1317
  %1319 = call i64 @Min(i64 noundef %1307, i64 noundef %1318)
  %1320 = add nsw i64 %1306, %1319
  %1321 = call { i64, i64 } @MakeRange(i64 noundef %1304, i64 noundef %1320)
  %1322 = getelementptr inbounds nuw { i64, i64 }, ptr %83, i32 0, i32 0
  %1323 = extractvalue { i64, i64 } %1321, 0
  store i64 %1323, ptr %1322, align 8
  %1324 = getelementptr inbounds nuw { i64, i64 }, ptr %83, i32 0, i32 1
  %1325 = extractvalue { i64, i64 } %1321, 1
  store i64 %1325, ptr %1324, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %34, ptr align 8 %83, i64 16, i1 false)
  %1326 = getelementptr inbounds nuw { i64, i64 }, ptr %35, i32 0, i32 0
  %1327 = load i64, ptr %1326, align 8
  %1328 = getelementptr inbounds nuw { i64, i64 }, ptr %35, i32 0, i32 1
  %1329 = load i64, ptr %1328, align 8
  %1330 = call i64 @Range_length(i64 %1327, i64 %1329)
  %1331 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1332 = load i64, ptr %1331, align 8
  %1333 = add nsw i64 %1332, %1330
  store i64 %1333, ptr %1331, align 8
  %1334 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1335 = load i64, ptr %1334, align 8
  store i64 %1335, ptr %39, align 8
  %1336 = load ptr, ptr %4, align 8
  %1337 = load i64, ptr %39, align 8
  %1338 = getelementptr inbounds %struct.Test, ptr %1336, i64 %1337
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 4 %1338, i64 8, i1 false)
  store i64 0, ptr %38, align 8
  %1339 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 0
  %1340 = load i64, ptr %1339, align 8
  %1341 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 1
  %1342 = load i64, ptr %1341, align 8
  %1343 = call i64 @Range_length(i64 %1340, i64 %1342)
  %1344 = icmp sle i64 %1343, 512
  br i1 %1344, label %1345, label %1357

1345:                                             ; preds = %1297
  %1346 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1347 = load ptr, ptr %4, align 8
  %1348 = getelementptr inbounds nuw %struct.Range, ptr %36, i32 0, i32 0
  %1349 = load i64, ptr %1348, align 8
  %1350 = getelementptr inbounds %struct.Test, ptr %1347, i64 %1349
  %1351 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 0
  %1352 = load i64, ptr %1351, align 8
  %1353 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 1
  %1354 = load i64, ptr %1353, align 8
  %1355 = call i64 @Range_length(i64 %1352, i64 %1354)
  %1356 = mul i64 %1355, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %1346, ptr align 4 %1350, i64 %1356, i1 false)
  br label %1368

1357:                                             ; preds = %1297
  %1358 = load ptr, ptr %4, align 8
  %1359 = getelementptr inbounds nuw %struct.Range, ptr %36, i32 0, i32 0
  %1360 = load i64, ptr %1359, align 8
  %1361 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %1362 = load i64, ptr %1361, align 8
  %1363 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 0
  %1364 = load i64, ptr %1363, align 8
  %1365 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 1
  %1366 = load i64, ptr %1365, align 8
  %1367 = call i64 @Range_length(i64 %1364, i64 %1366)
  call void @BlockSwap(ptr noundef %1358, i64 noundef %1360, i64 noundef %1362, i64 noundef %1367)
  br label %1368

1368:                                             ; preds = %1357, %1345
  br label %1369

1369:                                             ; preds = %1368, %1672
  %1370 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 0
  %1371 = load i64, ptr %1370, align 8
  %1372 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 1
  %1373 = load i64, ptr %1372, align 8
  %1374 = call i64 @Range_length(i64 %1371, i64 %1373)
  %1375 = icmp sgt i64 %1374, 0
  br i1 %1375, label %1376, label %1387

1376:                                             ; preds = %1369
  %1377 = load ptr, ptr %6, align 8
  %1378 = load ptr, ptr %4, align 8
  %1379 = getelementptr inbounds nuw %struct.Range, ptr %37, i32 0, i32 1
  %1380 = load i64, ptr %1379, align 8
  %1381 = sub nsw i64 %1380, 1
  %1382 = getelementptr inbounds %struct.Test, ptr %1378, i64 %1381
  %1383 = load i64, ptr %1382, align 4
  %1384 = load i64, ptr %41, align 4
  %1385 = call zeroext i8 %1377(i64 %1383, i64 %1384)
  %1386 = icmp ne i8 %1385, 0
  br i1 %1386, label %1387, label %1394

1387:                                             ; preds = %1376, %1369
  %1388 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1389 = load i64, ptr %1388, align 8
  %1390 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1391 = load i64, ptr %1390, align 8
  %1392 = call i64 @Range_length(i64 %1389, i64 %1391)
  %1393 = icmp eq i64 %1392, 0
  br i1 %1393, label %1394, label %1548

1394:                                             ; preds = %1387, %1376
  %1395 = load ptr, ptr %4, align 8
  %1396 = load i64, ptr %39, align 8
  %1397 = load ptr, ptr %6, align 8
  %1398 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 0
  %1399 = load i64, ptr %1398, align 8
  %1400 = getelementptr inbounds nuw { i64, i64 }, ptr %37, i32 0, i32 1
  %1401 = load i64, ptr %1400, align 8
  %1402 = call i64 @BinaryFirst(ptr noundef %1395, i64 noundef %1396, i64 %1399, i64 %1401, ptr noundef %1397)
  store i64 %1402, ptr %84, align 8
  %1403 = getelementptr inbounds nuw %struct.Range, ptr %37, i32 0, i32 1
  %1404 = load i64, ptr %1403, align 8
  %1405 = load i64, ptr %84, align 8
  %1406 = sub nsw i64 %1404, %1405
  store i64 %1406, ptr %85, align 8
  %1407 = load ptr, ptr %4, align 8
  %1408 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1409 = load i64, ptr %1408, align 8
  %1410 = load i64, ptr %39, align 8
  %1411 = load i64, ptr %22, align 8
  call void @BlockSwap(ptr noundef %1407, i64 noundef %1409, i64 noundef %1410, i64 noundef %1411)
  %1412 = load ptr, ptr %4, align 8
  %1413 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1414 = load i64, ptr %1413, align 8
  %1415 = add nsw i64 %1414, 1
  %1416 = getelementptr inbounds %struct.Test, ptr %1412, i64 %1415
  store ptr %1416, ptr %86, align 8
  %1417 = load ptr, ptr %4, align 8
  %1418 = getelementptr inbounds nuw %struct.Range, ptr %31, i32 0, i32 0
  %1419 = load i64, ptr %1418, align 8
  %1420 = load i64, ptr %38, align 8
  %1421 = add nsw i64 %1420, 1
  store i64 %1421, ptr %38, align 8
  %1422 = add nsw i64 %1419, %1420
  %1423 = getelementptr inbounds %struct.Test, ptr %1417, i64 %1422
  store ptr %1423, ptr %87, align 8
  %1424 = load ptr, ptr %86, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 4 %1424, i64 8, i1 false)
  %1425 = load ptr, ptr %86, align 8
  %1426 = load ptr, ptr %87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1425, ptr align 4 %1426, i64 8, i1 false)
  %1427 = load ptr, ptr %87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1427, ptr align 4 %88, i64 8, i1 false)
  %1428 = load ptr, ptr %4, align 8
  %1429 = getelementptr inbounds nuw %struct.Range, ptr %36, i32 0, i32 1
  %1430 = load i64, ptr %1429, align 8
  %1431 = load i64, ptr %84, align 8
  %1432 = call { i64, i64 } @MakeRange(i64 noundef %1430, i64 noundef %1431)
  %1433 = getelementptr inbounds nuw { i64, i64 }, ptr %89, i32 0, i32 0
  %1434 = extractvalue { i64, i64 } %1432, 0
  store i64 %1434, ptr %1433, align 8
  %1435 = getelementptr inbounds nuw { i64, i64 }, ptr %89, i32 0, i32 1
  %1436 = extractvalue { i64, i64 } %1432, 1
  store i64 %1436, ptr %1435, align 8
  %1437 = load ptr, ptr %6, align 8
  %1438 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1439 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 0
  %1440 = load i64, ptr %1439, align 8
  %1441 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 1
  %1442 = load i64, ptr %1441, align 8
  %1443 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 0
  %1444 = load i64, ptr %1443, align 8
  %1445 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 1
  %1446 = load i64, ptr %1445, align 8
  call void @WikiMerge(ptr noundef %1428, i64 %1440, i64 %1442, i64 %1444, i64 %1446, ptr noundef byval(%struct.Range) align 8 %89, ptr noundef %1437, ptr noundef %1438, i64 noundef 512)
  %1447 = load i64, ptr %22, align 8
  %1448 = icmp sle i64 %1447, 512
  br i1 %1448, label %1449, label %1457

1449:                                             ; preds = %1394
  %1450 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1451 = load ptr, ptr %4, align 8
  %1452 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1453 = load i64, ptr %1452, align 8
  %1454 = getelementptr inbounds %struct.Test, ptr %1451, i64 %1453
  %1455 = load i64, ptr %22, align 8
  %1456 = mul i64 %1455, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %1450, ptr align 4 %1454, i64 %1456, i1 false)
  br label %1464

1457:                                             ; preds = %1394
  %1458 = load ptr, ptr %4, align 8
  %1459 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1460 = load i64, ptr %1459, align 8
  %1461 = getelementptr inbounds nuw %struct.Range, ptr %32, i32 0, i32 0
  %1462 = load i64, ptr %1461, align 8
  %1463 = load i64, ptr %22, align 8
  call void @BlockSwap(ptr noundef %1458, i64 noundef %1460, i64 noundef %1462, i64 noundef %1463)
  br label %1464

1464:                                             ; preds = %1457, %1449
  %1465 = load ptr, ptr %4, align 8
  %1466 = load i64, ptr %84, align 8
  %1467 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1468 = load i64, ptr %1467, align 8
  %1469 = load i64, ptr %22, align 8
  %1470 = add nsw i64 %1468, %1469
  %1471 = load i64, ptr %85, align 8
  %1472 = sub nsw i64 %1470, %1471
  %1473 = load i64, ptr %85, align 8
  call void @BlockSwap(ptr noundef %1465, i64 noundef %1466, i64 noundef %1472, i64 noundef %1473)
  %1474 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1475 = load i64, ptr %1474, align 8
  %1476 = load i64, ptr %85, align 8
  %1477 = sub nsw i64 %1475, %1476
  %1478 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1479 = load i64, ptr %1478, align 8
  %1480 = load i64, ptr %85, align 8
  %1481 = sub nsw i64 %1479, %1480
  %1482 = load i64, ptr %22, align 8
  %1483 = add nsw i64 %1481, %1482
  %1484 = call { i64, i64 } @MakeRange(i64 noundef %1477, i64 noundef %1483)
  %1485 = getelementptr inbounds nuw { i64, i64 }, ptr %90, i32 0, i32 0
  %1486 = extractvalue { i64, i64 } %1484, 0
  store i64 %1486, ptr %1485, align 8
  %1487 = getelementptr inbounds nuw { i64, i64 }, ptr %90, i32 0, i32 1
  %1488 = extractvalue { i64, i64 } %1484, 1
  store i64 %1488, ptr %1487, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %90, i64 16, i1 false)
  %1489 = getelementptr inbounds nuw %struct.Range, ptr %36, i32 0, i32 1
  %1490 = load i64, ptr %1489, align 8
  %1491 = getelementptr inbounds nuw %struct.Range, ptr %36, i32 0, i32 1
  %1492 = load i64, ptr %1491, align 8
  %1493 = load i64, ptr %85, align 8
  %1494 = add nsw i64 %1492, %1493
  %1495 = call { i64, i64 } @MakeRange(i64 noundef %1490, i64 noundef %1494)
  %1496 = getelementptr inbounds nuw { i64, i64 }, ptr %91, i32 0, i32 0
  %1497 = extractvalue { i64, i64 } %1495, 0
  store i64 %1497, ptr %1496, align 8
  %1498 = getelementptr inbounds nuw { i64, i64 }, ptr %91, i32 0, i32 1
  %1499 = extractvalue { i64, i64 } %1495, 1
  store i64 %1499, ptr %1498, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %91, i64 16, i1 false)
  %1500 = load i64, ptr %22, align 8
  %1501 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1502 = load i64, ptr %1501, align 8
  %1503 = add nsw i64 %1502, %1500
  store i64 %1503, ptr %1501, align 8
  %1504 = getelementptr inbounds nuw { i64, i64 }, ptr %33, i32 0, i32 0
  %1505 = load i64, ptr %1504, align 8
  %1506 = getelementptr inbounds nuw { i64, i64 }, ptr %33, i32 0, i32 1
  %1507 = load i64, ptr %1506, align 8
  %1508 = call i64 @Range_length(i64 %1505, i64 %1507)
  %1509 = icmp eq i64 %1508, 0
  br i1 %1509, label %1510, label %1511

1510:                                             ; preds = %1464
  br label %1673

1511:                                             ; preds = %1464
  %1512 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1513 = load i64, ptr %1512, align 8
  %1514 = add nsw i64 %1513, 1
  store i64 %1514, ptr %39, align 8
  %1515 = load i64, ptr %39, align 8
  %1516 = load i64, ptr %22, align 8
  %1517 = add nsw i64 %1515, %1516
  store i64 %1517, ptr %40, align 8
  br label %1518

1518:                                             ; preds = %1538, %1511
  %1519 = load i64, ptr %40, align 8
  %1520 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 1
  %1521 = load i64, ptr %1520, align 8
  %1522 = icmp slt i64 %1519, %1521
  br i1 %1522, label %1523, label %1542

1523:                                             ; preds = %1518
  %1524 = load ptr, ptr %6, align 8
  %1525 = load ptr, ptr %4, align 8
  %1526 = load i64, ptr %40, align 8
  %1527 = getelementptr inbounds %struct.Test, ptr %1525, i64 %1526
  %1528 = load ptr, ptr %4, align 8
  %1529 = load i64, ptr %39, align 8
  %1530 = getelementptr inbounds %struct.Test, ptr %1528, i64 %1529
  %1531 = load i64, ptr %1527, align 4
  %1532 = load i64, ptr %1530, align 4
  %1533 = call zeroext i8 %1524(i64 %1531, i64 %1532)
  %1534 = icmp ne i8 %1533, 0
  br i1 %1534, label %1535, label %1537

1535:                                             ; preds = %1523
  %1536 = load i64, ptr %40, align 8
  store i64 %1536, ptr %39, align 8
  br label %1537

1537:                                             ; preds = %1535, %1523
  br label %1538

1538:                                             ; preds = %1537
  %1539 = load i64, ptr %22, align 8
  %1540 = load i64, ptr %40, align 8
  %1541 = add nsw i64 %1540, %1539
  store i64 %1541, ptr %40, align 8
  br label %1518, !llvm.loop !25

1542:                                             ; preds = %1518
  %1543 = load i64, ptr %39, align 8
  %1544 = sub nsw i64 %1543, 1
  store i64 %1544, ptr %39, align 8
  %1545 = load ptr, ptr %4, align 8
  %1546 = load i64, ptr %39, align 8
  %1547 = getelementptr inbounds %struct.Test, ptr %1545, i64 %1546
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 4 %1547, i64 8, i1 false)
  br label %1672

1548:                                             ; preds = %1387
  %1549 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1550 = load i64, ptr %1549, align 8
  %1551 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1552 = load i64, ptr %1551, align 8
  %1553 = call i64 @Range_length(i64 %1550, i64 %1552)
  %1554 = load i64, ptr %22, align 8
  %1555 = icmp slt i64 %1553, %1554
  br i1 %1555, label %1556, label %1619

1556:                                             ; preds = %1548
  %1557 = load ptr, ptr %4, align 8
  %1558 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1559 = load i64, ptr %1558, align 8
  %1560 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1561 = load i64, ptr %1560, align 8
  %1562 = call i64 @Range_length(i64 %1559, i64 %1561)
  %1563 = sub nsw i64 0, %1562
  %1564 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1565 = load i64, ptr %1564, align 8
  %1566 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 1
  %1567 = load i64, ptr %1566, align 8
  %1568 = call { i64, i64 } @MakeRange(i64 noundef %1565, i64 noundef %1567)
  %1569 = getelementptr inbounds nuw { i64, i64 }, ptr %92, i32 0, i32 0
  %1570 = extractvalue { i64, i64 } %1568, 0
  store i64 %1570, ptr %1569, align 8
  %1571 = getelementptr inbounds nuw { i64, i64 }, ptr %92, i32 0, i32 1
  %1572 = extractvalue { i64, i64 } %1568, 1
  store i64 %1572, ptr %1571, align 8
  %1573 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1574 = getelementptr inbounds nuw { i64, i64 }, ptr %92, i32 0, i32 0
  %1575 = load i64, ptr %1574, align 8
  %1576 = getelementptr inbounds nuw { i64, i64 }, ptr %92, i32 0, i32 1
  %1577 = load i64, ptr %1576, align 8
  call void @Rotate(ptr noundef %1557, i64 noundef %1563, i64 %1575, i64 %1577, ptr noundef %1573, i64 noundef 0)
  %1578 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1579 = load i64, ptr %1578, align 8
  %1580 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1581 = load i64, ptr %1580, align 8
  %1582 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1583 = load i64, ptr %1582, align 8
  %1584 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1585 = load i64, ptr %1584, align 8
  %1586 = call i64 @Range_length(i64 %1583, i64 %1585)
  %1587 = add nsw i64 %1581, %1586
  %1588 = call { i64, i64 } @MakeRange(i64 noundef %1579, i64 noundef %1587)
  %1589 = getelementptr inbounds nuw { i64, i64 }, ptr %93, i32 0, i32 0
  %1590 = extractvalue { i64, i64 } %1588, 0
  store i64 %1590, ptr %1589, align 8
  %1591 = getelementptr inbounds nuw { i64, i64 }, ptr %93, i32 0, i32 1
  %1592 = extractvalue { i64, i64 } %1588, 1
  store i64 %1592, ptr %1591, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %93, i64 16, i1 false)
  %1593 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1594 = load i64, ptr %1593, align 8
  %1595 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1596 = load i64, ptr %1595, align 8
  %1597 = call i64 @Range_length(i64 %1594, i64 %1596)
  %1598 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1599 = load i64, ptr %1598, align 8
  %1600 = add nsw i64 %1599, %1597
  store i64 %1600, ptr %1598, align 8
  %1601 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1602 = load i64, ptr %1601, align 8
  %1603 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1604 = load i64, ptr %1603, align 8
  %1605 = call i64 @Range_length(i64 %1602, i64 %1604)
  %1606 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 1
  %1607 = load i64, ptr %1606, align 8
  %1608 = add nsw i64 %1607, %1605
  store i64 %1608, ptr %1606, align 8
  %1609 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 0
  %1610 = load i64, ptr %1609, align 8
  %1611 = getelementptr inbounds nuw { i64, i64 }, ptr %34, i32 0, i32 1
  %1612 = load i64, ptr %1611, align 8
  %1613 = call i64 @Range_length(i64 %1610, i64 %1612)
  %1614 = load i64, ptr %39, align 8
  %1615 = add nsw i64 %1614, %1613
  store i64 %1615, ptr %39, align 8
  %1616 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 0
  %1617 = load i64, ptr %1616, align 8
  %1618 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 1
  store i64 %1617, ptr %1618, align 8
  br label %1671

1619:                                             ; preds = %1548
  %1620 = load ptr, ptr %4, align 8
  %1621 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1622 = load i64, ptr %1621, align 8
  %1623 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 0
  %1624 = load i64, ptr %1623, align 8
  %1625 = load i64, ptr %22, align 8
  call void @BlockSwap(ptr noundef %1620, i64 noundef %1622, i64 noundef %1624, i64 noundef %1625)
  %1626 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1627 = load i64, ptr %1626, align 8
  %1628 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1629 = load i64, ptr %1628, align 8
  %1630 = load i64, ptr %22, align 8
  %1631 = add nsw i64 %1629, %1630
  %1632 = call { i64, i64 } @MakeRange(i64 noundef %1627, i64 noundef %1631)
  %1633 = getelementptr inbounds nuw { i64, i64 }, ptr %94, i32 0, i32 0
  %1634 = extractvalue { i64, i64 } %1632, 0
  store i64 %1634, ptr %1633, align 8
  %1635 = getelementptr inbounds nuw { i64, i64 }, ptr %94, i32 0, i32 1
  %1636 = extractvalue { i64, i64 } %1632, 1
  store i64 %1636, ptr %1635, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %94, i64 16, i1 false)
  %1637 = load i64, ptr %39, align 8
  %1638 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1639 = load i64, ptr %1638, align 8
  %1640 = icmp eq i64 %1637, %1639
  br i1 %1640, label %1641, label %1644

1641:                                             ; preds = %1619
  %1642 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 1
  %1643 = load i64, ptr %1642, align 8
  store i64 %1643, ptr %39, align 8
  br label %1644

1644:                                             ; preds = %1641, %1619
  %1645 = load i64, ptr %22, align 8
  %1646 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 0
  %1647 = load i64, ptr %1646, align 8
  %1648 = add nsw i64 %1647, %1645
  store i64 %1648, ptr %1646, align 8
  %1649 = load i64, ptr %22, align 8
  %1650 = getelementptr inbounds nuw %struct.Range, ptr %33, i32 0, i32 1
  %1651 = load i64, ptr %1650, align 8
  %1652 = add nsw i64 %1651, %1649
  store i64 %1652, ptr %1650, align 8
  %1653 = load i64, ptr %22, align 8
  %1654 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 0
  %1655 = load i64, ptr %1654, align 8
  %1656 = add nsw i64 %1655, %1653
  store i64 %1656, ptr %1654, align 8
  %1657 = load i64, ptr %22, align 8
  %1658 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 1
  %1659 = load i64, ptr %1658, align 8
  %1660 = add nsw i64 %1659, %1657
  store i64 %1660, ptr %1658, align 8
  %1661 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 1
  %1662 = load i64, ptr %1661, align 8
  %1663 = getelementptr inbounds nuw %struct.Range, ptr %30, i32 0, i32 0
  %1664 = load i64, ptr %1663, align 8
  %1665 = icmp sgt i64 %1662, %1664
  br i1 %1665, label %1666, label %1670

1666:                                             ; preds = %1644
  %1667 = getelementptr inbounds nuw %struct.Range, ptr %30, i32 0, i32 0
  %1668 = load i64, ptr %1667, align 8
  %1669 = getelementptr inbounds nuw %struct.Range, ptr %34, i32 0, i32 1
  store i64 %1668, ptr %1669, align 8
  br label %1670

1670:                                             ; preds = %1666, %1644
  br label %1671

1671:                                             ; preds = %1670, %1556
  br label %1672

1672:                                             ; preds = %1671, %1542
  br label %1369

1673:                                             ; preds = %1510
  %1674 = load ptr, ptr %4, align 8
  %1675 = getelementptr inbounds nuw %struct.Range, ptr %36, i32 0, i32 1
  %1676 = load i64, ptr %1675, align 8
  %1677 = getelementptr inbounds nuw %struct.Range, ptr %43, i32 0, i32 1
  %1678 = load i64, ptr %1677, align 8
  %1679 = getelementptr inbounds nuw { i64, i64 }, ptr %30, i32 0, i32 0
  %1680 = load i64, ptr %1679, align 8
  %1681 = getelementptr inbounds nuw { i64, i64 }, ptr %30, i32 0, i32 1
  %1682 = load i64, ptr %1681, align 8
  %1683 = call i64 @Range_length(i64 %1680, i64 %1682)
  %1684 = sub nsw i64 %1678, %1683
  %1685 = call { i64, i64 } @MakeRange(i64 noundef %1676, i64 noundef %1684)
  %1686 = getelementptr inbounds nuw { i64, i64 }, ptr %95, i32 0, i32 0
  %1687 = extractvalue { i64, i64 } %1685, 0
  store i64 %1687, ptr %1686, align 8
  %1688 = getelementptr inbounds nuw { i64, i64 }, ptr %95, i32 0, i32 1
  %1689 = extractvalue { i64, i64 } %1685, 1
  store i64 %1689, ptr %1688, align 8
  %1690 = load ptr, ptr %6, align 8
  %1691 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1692 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 0
  %1693 = load i64, ptr %1692, align 8
  %1694 = getelementptr inbounds nuw { i64, i64 }, ptr %32, i32 0, i32 1
  %1695 = load i64, ptr %1694, align 8
  %1696 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 0
  %1697 = load i64, ptr %1696, align 8
  %1698 = getelementptr inbounds nuw { i64, i64 }, ptr %36, i32 0, i32 1
  %1699 = load i64, ptr %1698, align 8
  call void @WikiMerge(ptr noundef %1674, i64 %1693, i64 %1695, i64 %1697, i64 %1699, ptr noundef byval(%struct.Range) align 8 %95, ptr noundef %1690, ptr noundef %1691, i64 noundef 512)
  br label %1700

1700:                                             ; preds = %1673, %266
  br label %1701

1701:                                             ; preds = %1700, %249
  br label %197, !llvm.loop !14

1702:                                             ; preds = %197
  %1703 = getelementptr inbounds nuw { i64, i64 }, ptr %24, i32 0, i32 0
  %1704 = load i64, ptr %1703, align 8
  %1705 = getelementptr inbounds nuw { i64, i64 }, ptr %24, i32 0, i32 1
  %1706 = load i64, ptr %1705, align 8
  %1707 = call i64 @Range_length(i64 %1704, i64 %1706)
  %1708 = icmp sgt i64 %1707, 0
  br i1 %1708, label %1709, label %1846

1709:                                             ; preds = %1702
  %1710 = load ptr, ptr %4, align 8
  %1711 = load ptr, ptr %6, align 8
  %1712 = getelementptr inbounds nuw { i64, i64 }, ptr %25, i32 0, i32 0
  %1713 = load i64, ptr %1712, align 8
  %1714 = getelementptr inbounds nuw { i64, i64 }, ptr %25, i32 0, i32 1
  %1715 = load i64, ptr %1714, align 8
  call void @InsertionSort(ptr noundef %1710, i64 %1713, i64 %1715, ptr noundef %1711)
  %1716 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 0
  %1717 = load i64, ptr %1716, align 8
  store i64 %1717, ptr %96, align 8
  %1718 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 1
  %1719 = load i64, ptr %1718, align 8
  store i64 %1719, ptr %9, align 8
  br label %1720

1720:                                             ; preds = %1778, %1709
  %1721 = getelementptr inbounds nuw { i64, i64 }, ptr %26, i32 0, i32 0
  %1722 = load i64, ptr %1721, align 8
  %1723 = getelementptr inbounds nuw { i64, i64 }, ptr %26, i32 0, i32 1
  %1724 = load i64, ptr %1723, align 8
  %1725 = call i64 @Range_length(i64 %1722, i64 %1724)
  %1726 = icmp sgt i64 %1725, 0
  br i1 %1726, label %1727, label %1781

1727:                                             ; preds = %1720
  %1728 = load i64, ptr %9, align 8
  %1729 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 0
  %1730 = load i64, ptr %1729, align 8
  %1731 = icmp eq i64 %1728, %1730
  br i1 %1731, label %1745, label %1732

1732:                                             ; preds = %1727
  %1733 = load ptr, ptr %6, align 8
  %1734 = load ptr, ptr %4, align 8
  %1735 = load i64, ptr %9, align 8
  %1736 = getelementptr inbounds %struct.Test, ptr %1734, i64 %1735
  %1737 = load ptr, ptr %4, align 8
  %1738 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 0
  %1739 = load i64, ptr %1738, align 8
  %1740 = getelementptr inbounds %struct.Test, ptr %1737, i64 %1739
  %1741 = load i64, ptr %1736, align 4
  %1742 = load i64, ptr %1740, align 4
  %1743 = call zeroext i8 %1733(i64 %1741, i64 %1742)
  %1744 = icmp ne i8 %1743, 0
  br i1 %1744, label %1777, label %1745

1745:                                             ; preds = %1732, %1727
  %1746 = load i64, ptr %9, align 8
  %1747 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 1
  %1748 = load i64, ptr %1747, align 8
  %1749 = sub nsw i64 %1746, %1748
  store i64 %1749, ptr %97, align 8
  %1750 = load ptr, ptr %4, align 8
  %1751 = load i64, ptr %97, align 8
  %1752 = sub nsw i64 0, %1751
  %1753 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 0
  %1754 = load i64, ptr %1753, align 8
  %1755 = load i64, ptr %9, align 8
  %1756 = call { i64, i64 } @MakeRange(i64 noundef %1754, i64 noundef %1755)
  %1757 = getelementptr inbounds nuw { i64, i64 }, ptr %98, i32 0, i32 0
  %1758 = extractvalue { i64, i64 } %1756, 0
  store i64 %1758, ptr %1757, align 8
  %1759 = getelementptr inbounds nuw { i64, i64 }, ptr %98, i32 0, i32 1
  %1760 = extractvalue { i64, i64 } %1756, 1
  store i64 %1760, ptr %1759, align 8
  %1761 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1762 = getelementptr inbounds nuw { i64, i64 }, ptr %98, i32 0, i32 0
  %1763 = load i64, ptr %1762, align 8
  %1764 = getelementptr inbounds nuw { i64, i64 }, ptr %98, i32 0, i32 1
  %1765 = load i64, ptr %1764, align 8
  call void @Rotate(ptr noundef %1750, i64 noundef %1752, i64 %1763, i64 %1765, ptr noundef %1761, i64 noundef 512)
  %1766 = load i64, ptr %97, align 8
  %1767 = add nsw i64 %1766, 1
  %1768 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 0
  %1769 = load i64, ptr %1768, align 8
  %1770 = add nsw i64 %1769, %1767
  store i64 %1770, ptr %1768, align 8
  %1771 = load i64, ptr %97, align 8
  %1772 = getelementptr inbounds nuw %struct.Range, ptr %26, i32 0, i32 1
  %1773 = load i64, ptr %1772, align 8
  %1774 = add nsw i64 %1773, %1771
  store i64 %1774, ptr %1772, align 8
  %1775 = load i64, ptr %9, align 8
  %1776 = add nsw i64 %1775, -1
  store i64 %1776, ptr %9, align 8
  br label %1777

1777:                                             ; preds = %1745, %1732
  br label %1778

1778:                                             ; preds = %1777
  %1779 = load i64, ptr %9, align 8
  %1780 = add nsw i64 %1779, 1
  store i64 %1780, ptr %9, align 8
  br label %1720, !llvm.loop !26

1781:                                             ; preds = %1720
  %1782 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 0
  %1783 = load i64, ptr %1782, align 8
  store i64 %1783, ptr %9, align 8
  br label %1784

1784:                                             ; preds = %1842, %1781
  %1785 = getelementptr inbounds nuw { i64, i64 }, ptr %27, i32 0, i32 0
  %1786 = load i64, ptr %1785, align 8
  %1787 = getelementptr inbounds nuw { i64, i64 }, ptr %27, i32 0, i32 1
  %1788 = load i64, ptr %1787, align 8
  %1789 = call i64 @Range_length(i64 %1786, i64 %1788)
  %1790 = icmp sgt i64 %1789, 0
  br i1 %1790, label %1791, label %1845

1791:                                             ; preds = %1784
  %1792 = load i64, ptr %9, align 8
  %1793 = load i64, ptr %96, align 8
  %1794 = icmp eq i64 %1792, %1793
  br i1 %1794, label %1810, label %1795

1795:                                             ; preds = %1791
  %1796 = load ptr, ptr %6, align 8
  %1797 = load ptr, ptr %4, align 8
  %1798 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 1
  %1799 = load i64, ptr %1798, align 8
  %1800 = sub nsw i64 %1799, 1
  %1801 = getelementptr inbounds %struct.Test, ptr %1797, i64 %1800
  %1802 = load ptr, ptr %4, align 8
  %1803 = load i64, ptr %9, align 8
  %1804 = sub nsw i64 %1803, 1
  %1805 = getelementptr inbounds %struct.Test, ptr %1802, i64 %1804
  %1806 = load i64, ptr %1801, align 4
  %1807 = load i64, ptr %1805, align 4
  %1808 = call zeroext i8 %1796(i64 %1806, i64 %1807)
  %1809 = icmp ne i8 %1808, 0
  br i1 %1809, label %1841, label %1810

1810:                                             ; preds = %1795, %1791
  %1811 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 0
  %1812 = load i64, ptr %1811, align 8
  %1813 = load i64, ptr %9, align 8
  %1814 = sub nsw i64 %1812, %1813
  store i64 %1814, ptr %99, align 8
  %1815 = load ptr, ptr %4, align 8
  %1816 = load i64, ptr %99, align 8
  %1817 = load i64, ptr %9, align 8
  %1818 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 1
  %1819 = load i64, ptr %1818, align 8
  %1820 = call { i64, i64 } @MakeRange(i64 noundef %1817, i64 noundef %1819)
  %1821 = getelementptr inbounds nuw { i64, i64 }, ptr %100, i32 0, i32 0
  %1822 = extractvalue { i64, i64 } %1820, 0
  store i64 %1822, ptr %1821, align 8
  %1823 = getelementptr inbounds nuw { i64, i64 }, ptr %100, i32 0, i32 1
  %1824 = extractvalue { i64, i64 } %1820, 1
  store i64 %1824, ptr %1823, align 8
  %1825 = getelementptr inbounds [512 x %struct.Test], ptr %8, i64 0, i64 0
  %1826 = getelementptr inbounds nuw { i64, i64 }, ptr %100, i32 0, i32 0
  %1827 = load i64, ptr %1826, align 8
  %1828 = getelementptr inbounds nuw { i64, i64 }, ptr %100, i32 0, i32 1
  %1829 = load i64, ptr %1828, align 8
  call void @Rotate(ptr noundef %1815, i64 noundef %1816, i64 %1827, i64 %1829, ptr noundef %1825, i64 noundef 512)
  %1830 = load i64, ptr %99, align 8
  %1831 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 0
  %1832 = load i64, ptr %1831, align 8
  %1833 = sub nsw i64 %1832, %1830
  store i64 %1833, ptr %1831, align 8
  %1834 = load i64, ptr %99, align 8
  %1835 = add nsw i64 %1834, 1
  %1836 = getelementptr inbounds nuw %struct.Range, ptr %27, i32 0, i32 1
  %1837 = load i64, ptr %1836, align 8
  %1838 = sub nsw i64 %1837, %1835
  store i64 %1838, ptr %1836, align 8
  %1839 = load i64, ptr %9, align 8
  %1840 = add nsw i64 %1839, 1
  store i64 %1840, ptr %9, align 8
  br label %1841

1841:                                             ; preds = %1810, %1795
  br label %1842

1842:                                             ; preds = %1841
  %1843 = load i64, ptr %9, align 8
  %1844 = add nsw i64 %1843, -1
  store i64 %1844, ptr %9, align 8
  br label %1784, !llvm.loop !27

1845:                                             ; preds = %1784
  br label %1846

1846:                                             ; preds = %1845, %1702
  %1847 = load i64, ptr %19, align 8
  %1848 = load i64, ptr %19, align 8
  %1849 = add nsw i64 %1848, %1847
  store i64 %1849, ptr %19, align 8
  %1850 = load i64, ptr %18, align 8
  %1851 = load i64, ptr %18, align 8
  %1852 = add nsw i64 %1851, %1850
  store i64 %1852, ptr %18, align 8
  %1853 = load i64, ptr %18, align 8
  %1854 = load i64, ptr %17, align 8
  %1855 = icmp sge i64 %1853, %1854
  br i1 %1855, label %1856, label %1862

1856:                                             ; preds = %1846
  %1857 = load i64, ptr %17, align 8
  %1858 = load i64, ptr %18, align 8
  %1859 = sub nsw i64 %1858, %1857
  store i64 %1859, ptr %18, align 8
  %1860 = load i64, ptr %19, align 8
  %1861 = add nsw i64 %1860, 1
  store i64 %1861, ptr %19, align 8
  br label %1862

1862:                                             ; preds = %1856, %1846
  br label %1863

1863:                                             ; preds = %1862
  %1864 = load i64, ptr %10, align 8
  %1865 = load i64, ptr %10, align 8
  %1866 = add nsw i64 %1865, %1864
  store i64 %1866, ptr %10, align 8
  br label %164, !llvm.loop !28

1867:                                             ; preds = %103, %164
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingPathological(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load i64, ptr %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 10, ptr %3, align 8
  br label %24

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i64 11, ptr %3, align 8
  br label %24

15:                                               ; preds = %9
  %16 = load i64, ptr %4, align 8
  %17 = load i64, ptr %5, align 8
  %18 = sub nsw i64 %17, 1
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 10, ptr %3, align 8
  br label %24

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  store i64 9, ptr %3, align 8
  br label %24

24:                                               ; preds = %23, %20, %14, %8
  %25 = load i64, ptr %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingRandom(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = call i32 @rand_beebs()
  %6 = sext i32 %5 to i64
  ret i64 %6
}

declare i32 @rand_beebs() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingMostlyDescending(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = call i32 @rand_beebs()
  %9 = mul nsw i32 %8, 429496729
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = sub nsw i64 %11, 2
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingMostlyAscending(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = call i32 @rand_beebs()
  %7 = mul nsw i32 %6, 429496729
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %5, %8
  %10 = sub nsw i64 %9, 2
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingAscending(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingDescending(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = sub nsw i64 %5, %6
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingEqual(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  ret i64 1000
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingJittered(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = call i32 @rand_beebs()
  %6 = sdiv i32 %5, 1932735283
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, ptr %3, align 8
  br label %13

10:                                               ; preds = %2
  %11 = load i64, ptr %3, align 8
  %12 = sub nsw i64 %11, 2
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i64 [ %9, %8 ], [ %12, %10 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TestingMostlyEqual(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = call i32 @rand_beebs()
  %6 = srem i32 %5, 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 1000, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [400 x %struct.Test], align 16
  store i32 %0, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.verify_benchmark.exp, i64 3200, i1 false)
  %4 = getelementptr inbounds [400 x %struct.Test], ptr %3, i64 0, i64 0
  %5 = call i32 @memcmp(ptr noundef @array1, ptr noundef %4, i64 noundef 3200) #6
  %6 = icmp eq i32 0, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call i32 @benchmark_body(i32 noundef 1, i32 noundef %4)
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @benchmark_body(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [9 x ptr], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.Test, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store ptr @TestCompare, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %9, ptr align 16 @__const.benchmark_body.test_cases, i64 72, i1 false)
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %60, %2
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %3, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  store i32 0, ptr %12, align 4
  br label %19

19:                                               ; preds = %56, %18
  %20 = load i32, ptr %12, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  call void @srand_beebs(i32 noundef 0)
  store i64 400, ptr %5, align 8
  store i64 0, ptr %7, align 8
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i64, ptr %7, align 8
  %26 = icmp slt i64 %25, 9
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  store i64 0, ptr %6, align 8
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i64, ptr %6, align 8
  %30 = load i64, ptr %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds [9 x ptr], ptr %9, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8
  %36 = load i64, ptr %6, align 8
  %37 = load i64, ptr %5, align 8
  %38 = call i64 %35(i64 noundef %36, i64 noundef %37)
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds nuw %struct.Test, ptr %13, i32 0, i32 0
  store i32 %39, ptr %40, align 4
  %41 = load i64, ptr %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds nuw %struct.Test, ptr %13, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = load i64, ptr %6, align 8
  %45 = getelementptr inbounds [400 x %struct.Test], ptr @array1, i64 0, i64 %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %45, ptr align 4 %13, i64 8, i1 false)
  br label %46

46:                                               ; preds = %32
  %47 = load i64, ptr %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, ptr %6, align 8
  br label %28, !llvm.loop !29

49:                                               ; preds = %28
  %50 = load i64, ptr %5, align 8
  %51 = load ptr, ptr %8, align 8
  call void @WikiSort(ptr noundef @array1, i64 noundef %50, ptr noundef %51)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, ptr %7, align 8
  br label %24, !llvm.loop !30

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %12, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %12, align 4
  br label %19, !llvm.loop !31

59:                                               ; preds = %19
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %11, align 4
  br label %14, !llvm.loop !32

63:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 2, i32 noundef 20)
  ret i32 %1
}

declare void @srand_beebs(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
