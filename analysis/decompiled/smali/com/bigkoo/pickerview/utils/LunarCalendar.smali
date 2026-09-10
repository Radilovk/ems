.class public Lcom/bigkoo/pickerview/utils/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field private static final DAYS_BEFORE_MONTH:[I

.field private static final LUNAR_INFO:[I

.field public static final MAX_YEAR:I = 0x833

.field public static final MIN_YEAR:I = 0x76c

.field private static lunar_month_days:[I

.field private static solar_1_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xe1

    .line 26
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    .line 39
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solar_1_1:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/bigkoo/pickerview/utils/LunarCalendar;->lunar_month_days:[I

    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x84b6bf
        0x4ae53
        0xa5748
        0x5526bd
        0xd2650
        0xd9544
        0x46aab9
        0x56a4d
        0x9ad42
        0x24aeb6
        0x4ae4a
        0x6a4dbe
        0xa4d52
        0xd2546
        0x5d52ba
        0xb544e
        0xd6a43
        0x296d37
        0x95b4b
        0x749bc1
        0x49754
        0xa4b48
        0x5b25bc
        0x6a550
        0x6d445
        0x4adab8
        0x2b64d
        0x95742
        0x2497b7
        0x4974a
        0x664b3e
        0xd4a51
        0xea546
        0x56d4ba
        0x5ad4e
        0x2b644
        0x393738
        0x92e4b
        0x7c96bf
        0xc9553
        0xd4a48
        0x6da53b
        0xb554f
        0x56a45
        0x4aadb9
        0x25d4d
        0x92d42
        0x2c95b6
        0xa954a
        0x7b4abd
        0x6ca51
        0xb5546
        0x555abb
        0x4da4e
        0xa5b43
        0x352bb8
        0x52b4c
        0x8a953f
        0xe9552
        0x6aa48
        0x6ad53c
        0xab54f
        0x4b645
        0x4a5739
        0xa574d
        0x52642
        0x3e9335
        0xd9549
        0x75aabe
        0x56a51
        0x96d46
        0x54aebb
        0x4ad4f
        0xa4d43
        0x4d26b7
        0xd254b
        0x8d52bf
        0xb5452
        0xb6a47
        0x696d3c
        0x95b50
        0x49b45
        0x4a4bb9
        0xa4b4d
        0xab25c2
        0x6a554
        0x6d449
        0x6ada3d
        0xab651
        0x95746
        0x5497bb
        0x4974f
        0x64b44
        0x36a537
        0xea54a
        0x86b2bf
        0x5ac53
        0xab647
        0x5936bc
        0x92e50
        0xc9645
        0x4d4ab8
        0xd4a4c
        0xda541
        0x25aab6
        0x56a49
        0x7aadbd
        0x25d52
        0x92d47
        0x5c95ba
        0xa954e
        0xb4a43
        0x4b5537
        0xad54a
        0x955abf
        0x4ba53
        0xa5b48
        0x652bbc
        0x52b50
        0xa9345
        0x474ab9
        0x6aa4c
        0xad541
        0x24dab6
        0x4b64a
        0x6a573d
        0xa4e51
        0xd2646
        0x5e933a
        0xd534d
        0x5aa43
        0x36b537
        0x96d4b
        0xb4aebf
        0x4ad53
        0xa4d48
        0x6d25bc
        0xd254f
        0xd5244
        0x5daa38
        0xb5a4c
        0x56d41
        0x24adb6
        0x49b4a
        0x7a4bbe
        0xa4b51
        0xaa546
        0x5b52ba
        0x6d24e
        0xada42
        0x355b37    # 4.900003E-39f
        0x9374b
        0x8497c1
        0x49753
        0x64b48
        0x66a53c
        0xea54f
        0x6aa44
        0x4ab638
        0xaae4c
        0x92e42
        0x3c9735
        0xc9649
        0x7d4abd
        0xd4a51
        0xda545
        0x55aaba
        0x56a4e
        0xa6d43
        0x452eb7
        0x52d4b
        0x8a95bf
        0xa9553
        0xb4a47
        0x6b553b
        0xad54f
        0x55a45
        0x4a5d38
        0xa5b4c
        0x52b42
        0x3a93b6
        0x69349
        0x7729bd
        0x6aa51
        0xad546
        0x54daba
        0x4b64e
        0xa5743
        0x452738
        0xd264a
        0x8e933e
        0xd5252
        0xdaa47
        0x66b53b
        0x56d4f
        0x4ae45
        0x4a4eb9
        0xa4d4c
        0xd1541
        0x2d92b5
    .end array-data

    .line 62
    :array_2
    .array-data 4
        0x75f
        0xec04c
        0xec23f
        0xec435
        0xec649
        0xec83e
        0xeca51
        0xecc46
        0xece3a
        0xed04d
        0xed242
        0xed436
        0xed64a
        0xed83f
        0xeda53
        0xedc48
        0xede3d
        0xee050
        0xee244
        0xee439
        0xee64d
        0xee842
        0xeea36
        0xeec4a
        0xeee3e
        0xef052
        0xef246
        0xef43a
        0xef64e
        0xef843
        0xefa37
        0xefc4b
        0xefe41
        0xf0054
        0xf0248
        0xf043c
        0xf0650
        0xf0845
        0xf0a38
        0xf0c4d
        0xf0e42
        0xf1037
        0xf124a
        0xf143e
        0xf1651
        0xf1846
        0xf1a3a
        0xf1c4e
        0xf1e44
        0xf2038
        0xf224b
        0xf243f
        0xf2653
        0xf2848
        0xf2a3b
        0xf2c4f
        0xf2e45
        0xf3039
        0xf324d
        0xf3442
        0xf3636
        0xf384a
        0xf3a3d
        0xf3c51
        0xf3e46
        0xf403b
        0xf424e
        0xf4443
        0xf4638
        0xf484c
        0xf4a3f
        0xf4c52
        0xf4e48
        0xf503c
        0xf524f
        0xf5445
        0xf5639
        0xf584d
        0xf5a42
        0xf5c35
        0xf5e49
        0xf603e
        0xf6251
        0xf6446
        0xf663b
        0xf684f
        0xf6a43
        0xf6c37
        0xf6e4b
        0xf703f
        0xf7252
        0xf7447
        0xf763c
        0xf7850
        0xf7a45
        0xf7c39
        0xf7e4d
        0xf8042
        0xf8254
        0xf8449
        0xf863d
        0xf8851
        0xf8a46
        0xf8c3b
        0xf8e4f
        0xf9044
        0xf9237
        0xf944a
        0xf963f
        0xf9853
        0xf9a47
        0xf9c3c
        0xf9e50
        0xfa045
        0xfa238
        0xfa44c
        0xfa641
        0xfa836
        0xfaa49
        0xfac3d
        0xfae52
        0xfb047
        0xfb23a
        0xfb44e
        0xfb643
        0xfb837
        0xfba4a
        0xfbc3f
        0xfbe53
        0xfc048
        0xfc23c
        0xfc450
        0xfc645
        0xfc839
        0xfca4c
        0xfcc41
        0xfce36
        0xfd04a
        0xfd23d
        0xfd451
        0xfd646
        0xfd83a
        0xfda4d
        0xfdc43
        0xfde37
        0xfe04b
        0xfe23f
        0xfe453
        0xfe648
        0xfe83c
        0xfea4f
        0xfec44
        0xfee38
        0xff04c
        0xff241
        0xff436
        0xff64a
        0xff83e
        0xffa51
        0xffc46
        0xffe3a
        0x10004e
        0x100242
        0x100437
        0x10064b
        0x100841
        0x100a53
        0x100c48
        0x100e3c
        0x10104f
        0x101244
        0x101438
        0x10164c
        0x101842
        0x101a35
        0x101c49
        0x101e3d
        0x102051
        0x102245
        0x10243a
        0x10264e
        0x102843
        0x102a37
        0x102c4b
        0x102e3f
        0x103053
        0x103247
        0x10343b
        0x10364f
        0x103845
        0x103a38
        0x103c4c
        0x103e42
        0x104036
        0x104249
        0x10443d
        0x104651
        0x104846
        0x104a3a
        0x104c4e
        0x104e43
        0x105038
        0x10524a
        0x10543e
        0x105652
        0x105847
        0x105a3b
        0x105c4f
        0x105e45
        0x106039
        0x10624c
        0x106441
        0x106635
        0x106849
        0x106a3d
        0x106c51
        0x106e47
        0x10703c
        0x10724f
        0x107444
        0x107638
        0x10784c
        0x107a3f
        0x107c53
        0x107e48
    .end array-data

    .line 96
    :array_3
    .array-data 4
        0x75f
        0x1694
        0x16aa
        0x4ad5
        0xab6
        0xc4b7
        0x4ae
        0xa56
        0xb52a
        0x1d2a
        0xd54
        0x75aa
        0x156a
        0x1096d
        0x95c
        0x14ae
        0xaa4d
        0x1a4c
        0x1b2a
        0x8d55
        0xad4
        0x135a
        0x495d
        0x95c
        0xd49b
        0x149a
        0x1a4a
        0xbaa5
        0x16a8
        0x1ad4
        0x52da
        0x12b6
        0xe937
        0x92e
        0x1496
        0xb64b
        0xd4a
        0xda8
        0x95b5
        0x56c
        0x12ae
        0x492f
        0x92e
        0xcc96
        0x1a94
        0x1d4a
        0xada9
        0xb5a
        0x56c
        0x726e
        0x125c
        0xf92d
        0x192a
        0x1a94
        0xdb4a
        0x16aa
        0xad4
        0x955b
        0x4ba
        0x125a
        0x592b
        0x152a
        0xf695
        0xd94
        0x16aa
        0xaab5
        0x9b4
        0x14b6
        0x6a57
        0xa56
        0x1152a
        0x1d2a
        0xd54
        0xd5aa
        0x156a
        0x96c
        0x94ae
        0x14ae
        0xa4c
        0x7d26
        0x1b2a
        0xeb55
        0xad4
        0x12da
        0xa95d
        0x95a
        0x149a
        0x9a4d
        0x1a4a
        0x11aa5
        0x16a8
        0x16d4
        0xd2da
        0x12b6
        0x936
        0x9497
        0x1496
        0x1564b
        0xd4a
        0xda8
        0xd5b4
        0x156c
        0x12ae
        0xa92f
        0x92e
        0xc96
        0x6d4a
        0x1d4a
        0x10d65
        0xb58
        0x156c
        0xb26d
        0x125c
        0x192c
        0x9a95
        0x1a94
        0x1b4a
        0x4b55
        0xad4
        0xf55b
        0x4ba
        0x125a
        0xb92b
        0x152a
        0x1694
        0x96aa
        0x15aa
        0x12ab5
        0x974
        0x14b6
        0xca57
        0xa56
        0x1526
        0x8e95
        0xd54
        0x15aa
        0x49b5
        0x96c
        0xd4ae
        0x149c
        0x1a4c
        0xbd26
        0x1aa6
        0xb54
        0x6d6a
        0x12da
        0x1695d
        0x95a
        0x149a
        0xda4b
        0x1a4a
        0x1aa4
        0xbb54
        0x16b4
        0xada
        0x495b
        0x936
        0xf497
        0x1496
        0x154a
        0xb6a5
        0xda4
        0x15b4
        0x6ab6
        0x126e
        0x1092f
        0x92e
        0xc96
        0xcd4a
        0x1d4a
        0xd64
        0x956c
        0x155c
        0x125c
        0x792e
        0x192c
        0xfa95
        0x1a94
        0x1b4a
        0xab55
        0xad4
        0x14da
        0x8a5d
        0xa5a
        0x1152b
        0x152a
        0x1694
        0xd6aa
        0x15aa
        0xab4
        0x94ba
        0x14b6
        0xa56
        0x7527
        0xd26
        0xee53
        0xd54
        0x15aa
        0xa9b5
        0x96c
        0x14ae
        0x8a4e
        0x1a4c
        0x11d26
        0x1aa4
        0x1b54
        0xcd6a
        0xada
        0x95c
        0x949d
        0x149a
        0x1a2a
        0x5b25
        0x1aa4
        0xfb52
        0x16b4
        0xaba
        0xa95b
        0x936
        0x1496
        0x9a4b
        0x154a
        0x136a5
        0xda4
        0x15ac
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static daysInLunarMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 401
    sget-object v0, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x100000

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 402
    const/16 v0, 0x1d

    .line 404
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static daysInLunarYear(I)I
    .locals 5
    .param p0, "year"    # I

    .prologue
    .line 381
    const/16 v2, 0x15c

    .line 382
    .local v2, "sum":I
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->leapMonth(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    const/16 v2, 0x179

    .line 385
    :cond_0
    sget-object v3, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v4, p0, -0x76c

    aget v3, v3, v4

    const v4, 0xfff80

    and-int v1, v3, v4

    .line 386
    .local v1, "monthInfo":I
    const/high16 v0, 0x80000

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-le v0, v3, :cond_2

    .line 387
    and-int v3, v1, v0

    if-eqz v3, :cond_1

    .line 388
    add-int/lit8 v2, v2, 0x1

    .line 386
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_2
    return v2
.end method

.method public static final daysInMonth(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->daysInMonth(IIZ)I

    move-result v0

    return v0
.end method

.method public static final daysInMonth(IIZ)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "leap"    # Z

    .prologue
    .line 353
    invoke-static {p0}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 354
    .local v0, "leapMonth":I
    const/4 v1, 0x0

    .line 357
    .local v1, "offset":I
    if-eqz v0, :cond_0

    if-le p1, v0, :cond_0

    .line 358
    const/4 v1, 0x1

    .line 362
    :cond_0
    if-nez p2, :cond_1

    .line 363
    add-int v2, p1, v1

    invoke-static {p0, v2}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    .line 371
    :goto_0
    return v2

    .line 366
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 367
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    goto :goto_0

    .line 371
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getBitInt(III)I
    .locals 1
    .param p0, "data"    # I
    .param p1, "length"    # I
    .param p2, "shift"    # I

    .prologue
    .line 419
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    shl-int/2addr v0, p2

    and-int/2addr v0, p0

    shr-int/2addr v0, p2

    return v0
.end method

.method public static leapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 414
    sget-object v0, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public static final lunarToSolar(IIIZ)[I
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    const/high16 v9, 0x80000

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 141
    const/16 v5, 0x76c

    if-lt p0, v5, :cond_0

    const/16 v5, 0x833

    if-gt p0, v5, :cond_0

    if-lt p1, v7, :cond_0

    const/16 v5, 0xc

    if-gt p1, v5, :cond_0

    if-lt p2, v7, :cond_0

    const/16 v5, 0x1e

    if-le p2, v5, :cond_1

    .line 143
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal lunar date, must be like that:\n\tyear : 1900~2099\n\tmonth : 1~12\n\tday : 1~30"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_1
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v0, v5, -0x1

    .line 152
    .local v0, "dayOffset":I
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x60

    shr-int/lit8 v5, v5, 0x5

    if-ne v5, v8, :cond_2

    .line 153
    add-int/lit8 v0, v0, 0x1f

    .line 155
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 156
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    add-int/lit8 v6, v1, -0x1

    shr-int v6, v9, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    .line 157
    add-int/lit8 v0, v0, 0x1d

    .line 155
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_3
    add-int/lit8 v0, v0, 0x1e

    goto :goto_1

    .line 162
    :cond_4
    add-int/2addr v0, p2

    .line 163
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    const/high16 v6, 0xf00000

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x14

    .line 166
    .local v3, "leapMonth":I
    if-eqz v3, :cond_6

    .line 167
    if-gt p1, v3, :cond_5

    if-ne p1, v3, :cond_6

    if-eqz p3, :cond_6

    .line 168
    :cond_5
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    add-int/lit8 v6, p1, -0x1

    shr-int v6, v9, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_b

    .line 169
    add-int/lit8 v0, v0, 0x1d

    .line 175
    :cond_6
    :goto_2
    const/16 v5, 0x16e

    if-gt v0, v5, :cond_7

    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_8

    const/16 v5, 0x16d

    if-le v0, v5, :cond_8

    .line 176
    :cond_7
    add-int/lit8 p0, p0, 0x1

    .line 177
    rem-int/lit8 v5, p0, 0x4

    if-ne v5, v7, :cond_c

    .line 178
    add-int/lit16 v0, v0, -0x16e

    .line 183
    :cond_8
    :goto_3
    const/4 v5, 0x3

    new-array v4, v5, [I

    .line 184
    .local v4, "solarInfo":[I
    const/4 v1, 0x1

    :goto_4
    const/16 v5, 0xd

    if-ge v1, v5, :cond_a

    .line 185
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v2, v5, v1

    .line 186
    .local v2, "iPos":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_9

    if-le v1, v8, :cond_9

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 190
    :cond_9
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_d

    if-ne v1, v8, :cond_d

    add-int/lit8 v5, v2, 0x1

    if-ne v5, v0, :cond_d

    .line 191
    aput v1, v4, v7

    .line 192
    add-int/lit8 v5, v0, -0x1f

    aput v5, v4, v8

    .line 215
    .end local v2    # "iPos":I
    :cond_a
    :goto_5
    const/4 v5, 0x0

    aput p0, v4, v5

    .line 217
    return-object v4

    .line 171
    .end local v4    # "solarInfo":[I
    :cond_b
    add-int/lit8 v0, v0, 0x1e

    goto :goto_2

    .line 180
    :cond_c
    add-int/lit16 v0, v0, -0x16d

    goto :goto_3

    .line 196
    .restart local v2    # "iPos":I
    .restart local v4    # "solarInfo":[I
    :cond_d
    if-lt v2, v0, :cond_12

    .line 197
    aput v1, v4, v7

    .line 198
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v6, v1, -0x1

    aget v2, v5, v6

    .line 199
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_e

    if-le v1, v8, :cond_e

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 202
    :cond_e
    if-le v0, v2, :cond_f

    .line 203
    sub-int v5, v0, v2

    aput v5, v4, v8

    goto :goto_5

    .line 204
    :cond_f
    if-ne v0, v2, :cond_11

    .line 205
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_10

    if-ne v1, v8, :cond_10

    .line 206
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    goto :goto_5

    .line 208
    :cond_10
    sget-object v5, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/bigkoo/pickerview/utils/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    aput v5, v4, v8

    goto :goto_5

    .line 211
    :cond_11
    aput v0, v4, v8

    goto :goto_5

    .line 184
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private static solarToInt(III)J
    .locals 2
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # I

    .prologue
    .line 423
    add-int/lit8 v0, p1, 0x9

    rem-int/lit8 p1, v0, 0xc

    .line 424
    div-int/lit8 v0, p1, 0xa

    sub-int/2addr p0, v0

    .line 425
    mul-int/lit16 v0, p0, 0x16d

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    mul-int/lit16 v1, p1, 0x132

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static final solarToLunar(III)[I
    .locals 24
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    .line 221
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v11, v0, [I

    .line 223
    .local v11, "lunarDate":[I
    sget-object v19, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solar_1_1:[I

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-int v7, p0, v19

    .line 224
    .local v7, "index":I
    shl-int/lit8 v19, p0, 0x9

    shl-int/lit8 v20, p1, 0x5

    or-int v19, v19, v20

    or-int v3, v19, p2

    .line 226
    .local v3, "data":I
    const/4 v15, 0x0

    .line 227
    .local v15, "solar11":I
    sget-object v19, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solar_1_1:[I

    aget v19, v19, v7

    move/from16 v0, v19

    if-le v0, v3, :cond_0

    .line 228
    add-int/lit8 v7, v7, -0x1

    .line 230
    :cond_0
    sget-object v19, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solar_1_1:[I

    aget v15, v19, v7

    .line 231
    const/16 v19, 0xc

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->getBitInt(III)I

    move-result v18

    .line 232
    .local v18, "y":I
    const/16 v19, 0x4

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->getBitInt(III)I

    move-result v14

    .line 233
    .local v14, "m":I
    const/16 v19, 0x5

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->getBitInt(III)I

    move-result v2

    .line 234
    .local v2, "d":I
    invoke-static/range {p0 .. p2}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solarToInt(III)J

    move-result-wide v20

    .line 235
    move/from16 v0, v18

    invoke-static {v0, v14, v2}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solarToInt(III)J

    move-result-wide v22

    sub-long v16, v20, v22

    .line 237
    .local v16, "offset":J
    sget-object v19, Lcom/bigkoo/pickerview/utils/LunarCalendar;->lunar_month_days:[I

    aget v4, v19, v7

    .line 238
    .local v4, "days":I
    const/16 v19, 0x4

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->getBitInt(III)I

    move-result v9

    .line 240
    .local v9, "leap":I
    sget-object v19, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solar_1_1:[I

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v13, v7, v19

    .line 241
    .local v13, "lunarY":I
    const/4 v12, 0x1

    .line 242
    .local v12, "lunarM":I
    const/4 v10, 0x1

    .line 243
    .local v10, "lunarD":I
    const-wide/16 v20, 0x1

    add-long v16, v16, v20

    .line 245
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 246
    const/16 v19, 0x1

    rsub-int/lit8 v20, v6, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->getBitInt(III)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v5, 0x1e

    .line 247
    .local v5, "dm":I
    :goto_1
    int-to-long v0, v5

    move-wide/from16 v20, v0

    cmp-long v19, v16, v20

    if-lez v19, :cond_2

    .line 248
    add-int/lit8 v12, v12, 0x1

    .line 249
    int-to-long v0, v5

    move-wide/from16 v20, v0

    sub-long v16, v16, v20

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    .end local v5    # "dm":I
    :cond_1
    const/16 v5, 0x1d

    goto :goto_1

    .line 254
    :cond_2
    move-wide/from16 v0, v16

    long-to-int v10, v0

    .line 255
    const/16 v19, 0x0

    aput v13, v11, v19

    .line 256
    const/16 v19, 0x1

    aput v12, v11, v19

    .line 257
    const/4 v8, 0x0

    .line 258
    .local v8, "isLeap":Z
    if-eqz v9, :cond_3

    if-le v12, v9, :cond_3

    .line 259
    const/16 v19, 0x1

    add-int/lit8 v20, v12, -0x1

    aput v20, v11, v19

    .line 260
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_3

    .line 261
    const/4 v8, 0x1

    .line 265
    :cond_3
    const/16 v19, 0x2

    aput v10, v11, v19

    .line 266
    const/16 v20, 0x3

    if-eqz v8, :cond_4

    const/16 v19, 0x1

    :goto_2
    aput v19, v11, v20

    .line 268
    return-object v11

    .line 266
    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method public static final solarToLunarDeprecated(III)[I
    .locals 16
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    const/4 v12, 0x4

    new-array v9, v12, [I

    .line 284
    .local v9, "lunarDate":[I
    new-instance v12, Ljava/util/GregorianCalendar;

    const/16 v13, 0x76c

    const/4 v14, 0x0

    const/16 v15, 0x1f

    invoke-direct {v12, v13, v14, v15}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 285
    .local v2, "baseDate":Ljava/util/Date;
    new-instance v12, Ljava/util/GregorianCalendar;

    add-int/lit8 v13, p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v12, v0, v13, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 286
    .local v10, "objDate":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x5265c00

    div-long/2addr v12, v14

    long-to-int v11, v12

    .line 290
    .local v11, "offset":I
    const/4 v4, 0x0

    .line 291
    .local v4, "daysOfYear":I
    const/16 v6, 0x76c

    .local v6, "iYear":I
    :goto_0
    const/16 v12, 0x833

    if-gt v6, v12, :cond_0

    if-lez v11, :cond_0

    .line 292
    invoke-static {v6}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->daysInLunarYear(I)I

    move-result v4

    .line 293
    sub-int/2addr v11, v4

    .line 291
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 295
    :cond_0
    if-gez v11, :cond_1

    .line 296
    add-int/2addr v11, v4

    .line 297
    add-int/lit8 v6, v6, -0x1

    .line 301
    :cond_1
    const/4 v12, 0x0

    aput v6, v9, v12

    .line 303
    invoke-static {v6}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->leapMonth(I)I

    move-result v8

    .line 304
    .local v8, "leapMonth":I
    const/4 v7, 0x0

    .line 306
    .local v7, "isLeap":Z
    const/4 v3, 0x0

    .line 307
    .local v3, "daysOfMonth":I
    const/4 v5, 0x1

    .local v5, "iMonth":I
    :goto_1
    const/16 v12, 0xd

    if-gt v5, v12, :cond_2

    if-lez v11, :cond_2

    .line 308
    invoke-static {v6, v5}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->daysInLunarMonth(II)I

    move-result v3

    .line 309
    sub-int/2addr v11, v3

    .line 307
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 312
    :cond_2
    if-eqz v8, :cond_3

    if-le v5, v8, :cond_3

    .line 313
    add-int/lit8 v5, v5, -0x1

    .line 314
    const-string v12, "----------->"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "====>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-ne v5, v8, :cond_3

    .line 316
    const/4 v7, 0x1

    .line 320
    :cond_3
    if-gez v11, :cond_4

    .line 321
    add-int/2addr v11, v3

    .line 322
    add-int/lit8 v5, v5, -0x1

    .line 325
    :cond_4
    const/4 v12, 0x1

    aput v5, v9, v12

    .line 326
    const/4 v12, 0x2

    add-int/lit8 v13, v11, 0x1

    aput v13, v9, v12

    .line 327
    const/4 v13, 0x3

    if-eqz v7, :cond_5

    const/4 v12, 0x1

    :goto_2
    aput v12, v9, v13

    .line 330
    return-object v9

    .line 327
    :cond_5
    const/4 v12, 0x0

    goto :goto_2
.end method
