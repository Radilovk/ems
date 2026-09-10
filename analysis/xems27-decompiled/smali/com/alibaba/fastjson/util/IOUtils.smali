.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 46
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    .line 48
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    .line 53
    const/16 v1, 0x100

    new-array v0, v1, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 55
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v3, v2

    const/16 v4, 0x5a

    const/16 v5, 0x61

    const/16 v6, 0x41

    const/4 v7, 0x1

    if-ge v0, v3, :cond_4

    .line 56
    if-lt v0, v6, :cond_0

    if-gt v0, v4, :cond_0

    .line 57
    aput-boolean v7, v2, v0

    goto :goto_1

    .line 58
    :cond_0
    if-lt v0, v5, :cond_1

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    .line 59
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v7, v2, v0

    goto :goto_1

    .line 60
    :cond_1
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x24

    if-ne v0, v2, :cond_3

    .line 61
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v7, v2, v0

    .line 55
    :cond_3
    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_0

    .line 66
    .end local v0    # "c":C
    :cond_4
    new-array v0, v1, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 69
    const/4 v0, 0x0

    .restart local v0    # "c":C
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 70
    if-lt v0, v6, :cond_5

    if-gt v0, v4, :cond_5

    .line 71
    aput-boolean v7, v2, v0

    goto :goto_3

    .line 72
    :cond_5
    if-lt v0, v5, :cond_6

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_6

    .line 73
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v7, v2, v0

    goto :goto_3

    .line 74
    :cond_6
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_7

    .line 75
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v7, v2, v0

    goto :goto_3

    .line 76
    :cond_7
    const/16 v2, 0x30

    if-lt v0, v2, :cond_8

    const/16 v2, 0x39

    if-gt v0, v2, :cond_8

    .line 77
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v7, v2, v0

    .line 69
    :cond_8
    :goto_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_2

    .line 84
    .end local v0    # "c":C
    :cond_9
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/util/IOUtils;->loadPropertiesFromFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_4

    .line 85
    :catchall_0
    move-exception v0

    .line 122
    :goto_4
    const/16 v0, 0xa1

    new-array v2, v0, [B

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 123
    new-array v3, v0, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 124
    new-array v4, v0, [Z

    sput-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    .line 125
    new-array v4, v0, [Z

    sput-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    .line 127
    const/16 v4, 0x5d

    new-array v4, v4, [C

    sput-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 129
    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-byte v5, v2, v4

    .line 130
    aput-byte v5, v2, v7

    .line 131
    const/4 v6, 0x2

    aput-byte v5, v2, v6

    .line 132
    const/4 v8, 0x3

    aput-byte v5, v2, v8

    .line 133
    aput-byte v5, v2, v5

    .line 134
    const/4 v9, 0x5

    aput-byte v5, v2, v9

    .line 135
    const/4 v10, 0x6

    aput-byte v5, v2, v10

    .line 136
    const/4 v11, 0x7

    aput-byte v5, v2, v11

    .line 137
    const/16 v12, 0x8

    aput-byte v7, v2, v12

    .line 138
    const/16 v13, 0x9

    aput-byte v7, v2, v13

    .line 139
    const/16 v14, 0xa

    aput-byte v7, v2, v14

    .line 140
    const/16 v15, 0xb

    aput-byte v5, v2, v15

    .line 141
    const/16 v16, 0xc

    aput-byte v7, v2, v16

    .line 142
    const/16 v17, 0xd

    aput-byte v7, v2, v17

    .line 143
    const/16 v18, 0x22

    aput-byte v7, v2, v18

    .line 144
    const/16 v19, 0x5c

    aput-byte v7, v2, v19

    .line 146
    aput-byte v5, v3, v4

    .line 147
    aput-byte v5, v3, v7

    .line 148
    aput-byte v5, v3, v6

    .line 149
    aput-byte v5, v3, v8

    .line 150
    aput-byte v5, v3, v5

    .line 151
    aput-byte v5, v3, v9

    .line 152
    aput-byte v5, v3, v10

    .line 153
    aput-byte v5, v3, v11

    .line 154
    aput-byte v7, v3, v12

    .line 155
    aput-byte v7, v3, v13

    .line 156
    aput-byte v7, v3, v14

    .line 157
    aput-byte v5, v3, v15

    .line 158
    aput-byte v7, v3, v16

    .line 159
    aput-byte v7, v3, v17

    .line 160
    aput-byte v7, v3, v19

    .line 161
    const/16 v2, 0x27

    aput-byte v7, v3, v2

    .line 163
    const/16 v3, 0xe

    .local v3, "i":I
    :goto_5
    const/16 v1, 0x1f

    if-gt v3, v1, :cond_a

    .line 164
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v1, v3

    .line 165
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v1, v3

    .line 163
    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x100

    goto :goto_5

    .line 168
    .end local v3    # "i":I
    :cond_a
    const/16 v1, 0x7f

    .local v1, "i":I
    :goto_6
    const/16 v3, 0xa0

    if-ge v1, v3, :cond_b

    .line 169
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v3, v1

    .line 170
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 173
    .end local v1    # "i":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_e

    .line 174
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v1

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    goto :goto_8

    :cond_c
    const/16 v20, 0x0

    :goto_8
    aput-boolean v20, v3, v1

    .line 175
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v20, v20, v1

    if-eqz v20, :cond_d

    const/16 v20, 0x1

    goto :goto_9

    :cond_d
    const/16 v20, 0x0

    :goto_9
    aput-boolean v20, v3, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 178
    .end local v1    # "i":I
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x30

    aput-char v1, v0, v4

    .line 179
    const/16 v1, 0x31

    aput-char v1, v0, v7

    .line 180
    const/16 v1, 0x32

    aput-char v1, v0, v6

    .line 181
    const/16 v1, 0x33

    aput-char v1, v0, v8

    .line 182
    const/16 v1, 0x34

    aput-char v1, v0, v5

    .line 183
    const/16 v1, 0x35

    aput-char v1, v0, v9

    .line 184
    const/16 v1, 0x36

    aput-char v1, v0, v10

    .line 185
    const/16 v1, 0x37

    aput-char v1, v0, v11

    .line 186
    const/16 v1, 0x62

    aput-char v1, v0, v12

    .line 187
    const/16 v1, 0x74

    aput-char v1, v0, v13

    .line 188
    const/16 v1, 0x6e

    aput-char v1, v0, v14

    .line 189
    const/16 v1, 0x76

    aput-char v1, v0, v15

    .line 190
    const/16 v1, 0x66

    aput-char v1, v0, v16

    .line 191
    const/16 v1, 0x72

    aput-char v1, v0, v17

    .line 192
    aput-char v18, v0, v18

    .line 193
    aput-char v2, v0, v2

    .line 194
    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    .line 195
    aput-char v19, v0, v19

    .line 198
    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    .line 337
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 340
    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 346
    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 352
    new-array v0, v14, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    .line 391
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 392
    const/16 v1, 0x100

    new-array v0, v1, [I

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 394
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v1, v1

    .local v1, "iS":I
    :goto_a
    if-ge v0, v1, :cond_f

    .line 396
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 397
    .end local v0    # "i":I
    .end local v1    # "iS":I
    :cond_f
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v1, 0x3d

    aput v4, v0, v1

    .line 398
    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "x"    # Ljava/io/Closeable;

    .line 206
    if-eqz p0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 213
    :cond_0
    :goto_0
    return-void
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 4
    .param p0, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p1, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "charByte"    # Ljava/nio/CharBuffer;

    .line 365
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 367
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 371
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    move-object v0, v1

    .line 373
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    nop

    .line 381
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 379
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utf8 decode error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 14
    .param p0, "s"    # Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 535
    .local v0, "sLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 536
    new-array v1, v1, [B

    return-object v1

    .line 539
    :cond_0
    const/4 v2, 0x0

    .local v2, "sIx":I
    add-int/lit8 v3, v0, -0x1

    .line 542
    .local v3, "eIx":I
    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 547
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 550
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 551
    .local v4, "pad":I
    :goto_2
    sub-int v5, v3, v2

    add-int/2addr v5, v6

    .line 552
    .local v5, "cCnt":I
    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    div-int/lit8 v1, v5, 0x4e

    :cond_5
    shl-int/2addr v1, v6

    .line 554
    .local v1, "sepCnt":I
    :cond_6
    sub-int v6, v5, v1

    mul-int/lit8 v6, v6, 0x6

    shr-int/lit8 v6, v6, 0x3

    sub-int/2addr v6, v4

    .line 555
    .local v6, "len":I
    new-array v7, v6, [B

    .line 558
    .local v7, "dArr":[B
    const/4 v8, 0x0

    .line 559
    .local v8, "d":I
    const/4 v9, 0x0

    .local v9, "cc":I
    div-int/lit8 v10, v6, 0x3

    mul-int/lit8 v10, v10, 0x3

    .local v10, "eLen":I
    :goto_3
    if-ge v8, v10, :cond_8

    .line 561
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "sIx":I
    .local v12, "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v11, v2

    shl-int/lit8 v2, v2, 0x12

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "sIx":I
    .local v13, "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v2, v11

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v11, v11, v13

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v2, v11

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v12, 0x1

    .line 562
    .end local v12    # "sIx":I
    .restart local v13    # "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    or-int/2addr v2, v11

    .line 565
    .local v2, "i":I
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "d":I
    .local v11, "d":I
    shr-int/lit8 v12, v2, 0x10

    int-to-byte v12, v12

    aput-byte v12, v7, v8

    .line 566
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "d":I
    .restart local v8    # "d":I
    shr-int/lit8 v12, v2, 0x8

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 567
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "d":I
    .restart local v11    # "d":I
    int-to-byte v12, v2

    aput-byte v12, v7, v8

    .line 570
    if-lez v1, :cond_7

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x13

    if-ne v9, v8, :cond_7

    .line 571
    add-int/lit8 v13, v13, 0x2

    .line 572
    const/4 v8, 0x0

    move v9, v8

    move v2, v13

    .end local v9    # "cc":I
    .local v8, "cc":I
    goto :goto_4

    .line 570
    .end local v8    # "cc":I
    .restart local v9    # "cc":I
    :cond_7
    move v2, v13

    .line 574
    .end local v13    # "sIx":I
    .local v2, "sIx":I
    :goto_4
    move v8, v11

    goto :goto_3

    .line 576
    .end local v9    # "cc":I
    .end local v10    # "eLen":I
    .end local v11    # "d":I
    .local v8, "d":I
    :cond_8
    if-ge v8, v6, :cond_a

    .line 578
    const/4 v9, 0x0

    .line 579
    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    sub-int v11, v3, v4

    if-gt v2, v11, :cond_9

    .line 580
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v11, v2

    mul-int/lit8 v11, v10, 0x6

    rsub-int/lit8 v11, v11, 0x12

    shl-int/2addr v2, v11

    or-int/2addr v9, v2

    .line 579
    add-int/lit8 v10, v10, 0x1

    move v2, v12

    goto :goto_5

    .line 582
    .end local v10    # "j":I
    .end local v12    # "sIx":I
    .restart local v2    # "sIx":I
    :cond_9
    const/16 v10, 0x10

    .local v10, "r":I
    :goto_6
    if-ge v8, v6, :cond_a

    .line 583
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "d":I
    .restart local v11    # "d":I
    shr-int v12, v9, v10

    int-to-byte v12, v12

    aput-byte v12, v7, v8

    .line 582
    add-int/lit8 v10, v10, -0x8

    move v8, v11

    goto :goto_6

    .line 586
    .end local v9    # "i":I
    .end local v10    # "r":I
    .end local v11    # "d":I
    .restart local v8    # "d":I
    :cond_a
    return-object v7
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .locals 13
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 468
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 469
    new-array v0, v0, [B

    return-object v0

    .line 472
    :cond_0
    move v1, p1

    .local v1, "sIx":I
    add-int v2, p1, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 475
    .local v2, "eIx":I
    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 480
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 483
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 484
    .local v4, "pad":I
    :goto_2
    sub-int v5, v2, v1

    add-int/2addr v5, v3

    .line 485
    .local v5, "cCnt":I
    const/16 v6, 0x4c

    if-le p2, v6, :cond_6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    :cond_5
    shl-int/2addr v0, v3

    .line 487
    .local v0, "sepCnt":I
    :cond_6
    sub-int v3, v5, v0

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    .line 488
    .local v3, "len":I
    new-array v6, v3, [B

    .line 491
    .local v6, "bytes":[B
    const/4 v7, 0x0

    .line 492
    .local v7, "d":I
    const/4 v8, 0x0

    .local v8, "cc":I
    div-int/lit8 v9, v3, 0x3

    mul-int/lit8 v9, v9, 0x3

    .local v9, "eLen":I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 494
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .local v11, "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .local v12, "sIx":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v1, v10

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sIx":I
    .restart local v11    # "sIx":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v1, v10

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .restart local v12    # "sIx":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    or-int/2addr v1, v10

    .line 497
    .local v1, "i":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .local v10, "d":I
    shr-int/lit8 v11, v1, 0x10

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 498
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "d":I
    .restart local v7    # "d":I
    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 499
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    int-to-byte v11, v1

    aput-byte v11, v6, v7

    .line 502
    if-lez v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0x13

    if-ne v8, v7, :cond_7

    .line 503
    add-int/lit8 v12, v12, 0x2

    .line 504
    const/4 v7, 0x0

    move v8, v7

    move v1, v12

    .end local v8    # "cc":I
    .local v7, "cc":I
    goto :goto_4

    .line 502
    .end local v7    # "cc":I
    .restart local v8    # "cc":I
    :cond_7
    move v1, v12

    .line 506
    .end local v12    # "sIx":I
    .local v1, "sIx":I
    :goto_4
    move v7, v10

    goto :goto_3

    .line 508
    .end local v8    # "cc":I
    .end local v9    # "eLen":I
    .end local v10    # "d":I
    .local v7, "d":I
    :cond_8
    if-ge v7, v3, :cond_a

    .line 510
    const/4 v8, 0x0

    .line 511
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    sub-int v10, v2, v4

    if-gt v1, v10, :cond_9

    .line 512
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v11    # "sIx":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v1, v10, v1

    mul-int/lit8 v10, v9, 0x6

    rsub-int/lit8 v10, v10, 0x12

    shl-int/2addr v1, v10

    or-int/2addr v8, v1

    .line 511
    add-int/lit8 v9, v9, 0x1

    move v1, v11

    goto :goto_5

    .line 514
    .end local v9    # "j":I
    .end local v11    # "sIx":I
    .restart local v1    # "sIx":I
    :cond_9
    const/16 v9, 0x10

    .local v9, "r":I
    :goto_6
    if-ge v7, v3, :cond_a

    .line 515
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    shr-int v11, v8, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 514
    add-int/lit8 v9, v9, -0x8

    move v7, v10

    goto :goto_6

    .line 518
    .end local v8    # "i":I
    .end local v9    # "r":I
    .end local v10    # "d":I
    .restart local v7    # "d":I
    :cond_a
    return-object v6
.end method

.method public static decodeBase64([CII)[B
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 413
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 414
    new-array v0, v0, [B

    return-object v0

    .line 417
    :cond_0
    move v1, p1

    .local v1, "sIx":I
    add-int v2, p1, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 420
    .local v2, "eIx":I
    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v5, p0, v1

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v5, p0, v2

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 425
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 428
    :cond_2
    aget-char v4, p0, v2

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p0, v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 429
    .local v4, "pad":I
    :goto_2
    sub-int v5, v2, v1

    add-int/2addr v5, v3

    .line 430
    .local v5, "cCnt":I
    const/16 v6, 0x4c

    if-le p2, v6, :cond_6

    aget-char v6, p0, v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    :cond_5
    shl-int/2addr v0, v3

    .line 432
    .local v0, "sepCnt":I
    :cond_6
    sub-int v3, v5, v0

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v4

    .line 433
    .local v3, "len":I
    new-array v6, v3, [B

    .line 436
    .local v6, "bytes":[B
    const/4 v7, 0x0

    .line 437
    .local v7, "d":I
    const/4 v8, 0x0

    .local v8, "cc":I
    div-int/lit8 v9, v3, 0x3

    mul-int/lit8 v9, v9, 0x3

    .local v9, "eLen":I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 439
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .local v11, "sIx":I
    aget-char v1, p0, v1

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .local v12, "sIx":I
    aget-char v11, p0, v11

    aget v11, v10, v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v1, v11

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sIx":I
    .restart local v11    # "sIx":I
    aget-char v12, p0, v12

    aget v12, v10, v12

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v1, v12

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sIx":I
    .restart local v12    # "sIx":I
    aget-char v11, p0, v11

    aget v10, v10, v11

    or-int/2addr v1, v10

    .line 442
    .local v1, "i":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .local v10, "d":I
    shr-int/lit8 v11, v1, 0x10

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 443
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "d":I
    .restart local v7    # "d":I
    shr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 444
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    int-to-byte v11, v1

    aput-byte v11, v6, v7

    .line 447
    if-lez v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0x13

    if-ne v8, v7, :cond_7

    .line 448
    add-int/lit8 v12, v12, 0x2

    .line 449
    const/4 v7, 0x0

    move v8, v7

    move v1, v12

    .end local v8    # "cc":I
    .local v7, "cc":I
    goto :goto_4

    .line 447
    .end local v7    # "cc":I
    .restart local v8    # "cc":I
    :cond_7
    move v1, v12

    .line 451
    .end local v12    # "sIx":I
    .local v1, "sIx":I
    :goto_4
    move v7, v10

    goto :goto_3

    .line 453
    .end local v8    # "cc":I
    .end local v9    # "eLen":I
    .end local v10    # "d":I
    .local v7, "d":I
    :cond_8
    if-ge v7, v3, :cond_a

    .line 455
    const/4 v8, 0x0

    .line 456
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    sub-int v10, v2, v4

    if-gt v1, v10, :cond_9

    .line 457
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "sIx":I
    .restart local v11    # "sIx":I
    aget-char v1, p0, v1

    aget v1, v10, v1

    mul-int/lit8 v10, v9, 0x6

    rsub-int/lit8 v10, v10, 0x12

    shl-int/2addr v1, v10

    or-int/2addr v8, v1

    .line 456
    add-int/lit8 v9, v9, 0x1

    move v1, v11

    goto :goto_5

    .line 459
    .end local v9    # "j":I
    .end local v11    # "sIx":I
    .restart local v1    # "sIx":I
    :cond_9
    const/16 v9, 0x10

    .local v9, "r":I
    :goto_6
    if-ge v7, v3, :cond_a

    .line 460
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "d":I
    .restart local v10    # "d":I
    shr-int v11, v8, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    .line 459
    add-int/lit8 v9, v9, -0x8

    move v7, v10

    goto :goto_6

    .line 463
    .end local v8    # "i":I
    .end local v9    # "r":I
    .end local v10    # "d":I
    .restart local v7    # "d":I
    :cond_a
    return-object v6
.end method

.method public static decodeUTF8([BII[C)I
    .locals 11
    .param p0, "sa"    # [B
    .param p1, "sp"    # I
    .param p2, "len"    # I
    .param p3, "da"    # [C

    .line 653
    add-int v0, p1, p2

    .line 654
    .local v0, "sl":I
    const/4 v1, 0x0

    .line 655
    .local v1, "dp":I
    array-length v2, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 658
    .local v2, "dlASCII":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p0, p1

    if-ltz v3, :cond_0

    .line 659
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "dp":I
    .local v3, "dp":I
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "sp":I
    .local v4, "sp":I
    aget-byte p1, p0, p1

    int-to-char p1, p1

    aput-char p1, p3, v1

    move v1, v3

    move p1, v4

    goto :goto_0

    .line 661
    .end local v3    # "dp":I
    .end local v4    # "sp":I
    .restart local v1    # "dp":I
    .restart local p1    # "sp":I
    :cond_0
    :goto_1
    if-ge p1, v0, :cond_10

    .line 662
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "sp":I
    .local v3, "sp":I
    aget-byte p1, p0, p1

    .line 663
    .local p1, "b1":I
    if-ltz p1, :cond_1

    .line 665
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dp":I
    .local v4, "dp":I
    int-to-char v5, p1

    aput-char v5, p3, v1

    .line 735
    .end local p1    # "b1":I
    move p1, v3

    move v1, v4

    goto :goto_1

    .line 666
    .end local v4    # "dp":I
    .restart local v1    # "dp":I
    .restart local p1    # "b1":I
    :cond_1
    shr-int/lit8 v4, p1, 0x5

    const/4 v5, -0x2

    const/16 v6, 0x80

    const/4 v7, -0x1

    if-ne v4, v5, :cond_4

    and-int/lit8 v4, p1, 0x1e

    if-eqz v4, :cond_4

    .line 668
    if-ge v3, v0, :cond_3

    .line 669
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sp":I
    .local v4, "sp":I
    aget-byte v3, p0, v3

    .line 670
    .local v3, "b2":I
    and-int/lit16 v5, v3, 0xc0

    if-eq v5, v6, :cond_2

    .line 671
    return v7

    .line 673
    :cond_2
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    shl-int/lit8 v6, p1, 0x6

    xor-int/2addr v6, v3

    xor-int/lit16 v6, v6, 0xf80

    int-to-char v6, v6

    aput-char v6, p3, v1

    .line 677
    move p1, v4

    move v1, v5

    goto :goto_1

    .line 679
    .end local v4    # "sp":I
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    .local v3, "sp":I
    :cond_3
    return v7

    .line 680
    :cond_4
    shr-int/lit8 v4, p1, 0x4

    if-ne v4, v5, :cond_b

    .line 682
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v0, :cond_a

    .line 683
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sp":I
    .restart local v4    # "sp":I
    aget-byte v3, p0, v3

    .line 684
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sp":I
    .local v5, "sp":I
    aget-byte v4, p0, v4

    .line 685
    .local v4, "b3":I
    const/16 v8, -0x20

    if-ne p1, v8, :cond_5

    and-int/lit16 v8, v3, 0xe0

    if-eq v8, v6, :cond_9

    :cond_5
    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v6, :cond_9

    and-int/lit16 v8, v4, 0xc0

    if-eq v8, v6, :cond_6

    goto :goto_3

    .line 690
    :cond_6
    shl-int/lit8 v6, p1, 0xc

    shl-int/lit8 v8, v3, 0x6

    xor-int/2addr v6, v8

    const v8, -0x1e080

    xor-int/2addr v8, v4

    xor-int/2addr v6, v8

    int-to-char v6, v6

    .line 696
    .local v6, "c":C
    const v8, 0xd800

    if-lt v6, v8, :cond_7

    const v8, 0xe000

    if-ge v6, v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 697
    .local v8, "isSurrogate":Z
    :goto_2
    if-eqz v8, :cond_8

    .line 698
    return v7

    .line 700
    :cond_8
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dp":I
    .local v7, "dp":I
    aput-char v6, p3, v1

    .line 703
    .end local v6    # "c":C
    .end local v8    # "isSurrogate":Z
    move p1, v5

    move v1, v7

    goto :goto_1

    .line 688
    .end local v7    # "dp":I
    .restart local v1    # "dp":I
    :cond_9
    :goto_3
    return v7

    .line 705
    .end local v4    # "b3":I
    .end local v5    # "sp":I
    .local v3, "sp":I
    :cond_a
    return v7

    .line 706
    :cond_b
    shr-int/lit8 v4, p1, 0x3

    if-ne v4, v5, :cond_f

    .line 708
    add-int/lit8 v4, v3, 0x2

    if-ge v4, v0, :cond_e

    .line 709
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sp":I
    .local v4, "sp":I
    aget-byte v3, p0, v3

    .line 710
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sp":I
    .restart local v5    # "sp":I
    aget-byte v4, p0, v4

    .line 711
    .local v4, "b3":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "sp":I
    .local v8, "sp":I
    aget-byte v5, p0, v5

    .line 712
    .local v5, "b4":I
    shl-int/lit8 v9, p1, 0x12

    shl-int/lit8 v10, v3, 0xc

    xor-int/2addr v9, v10

    shl-int/lit8 v10, v4, 0x6

    xor-int/2addr v9, v10

    const v10, 0x381f80

    xor-int/2addr v10, v5

    xor-int/2addr v9, v10

    .line 720
    .local v9, "uc":I
    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v6, :cond_d

    and-int/lit16 v10, v4, 0xc0

    if-ne v10, v6, :cond_d

    and-int/lit16 v10, v5, 0xc0

    if-ne v10, v6, :cond_d

    .line 723
    invoke-static {v9}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_4

    .line 726
    :cond_c
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dp":I
    .local v6, "dp":I
    ushr-int/lit8 v7, v9, 0xa

    const v10, 0xd7c0

    add-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, p3, v1

    .line 727
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "dp":I
    .restart local v1    # "dp":I
    and-int/lit16 v7, v9, 0x3ff

    const v10, 0xdc00

    add-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, p3, v6

    .line 729
    move p1, v8

    goto/16 :goto_1

    .line 724
    :cond_d
    :goto_4
    return v7

    .line 731
    .end local v4    # "b3":I
    .end local v5    # "b4":I
    .end local v8    # "sp":I
    .end local v9    # "uc":I
    .local v3, "sp":I
    :cond_e
    return v7

    .line 733
    :cond_f
    return v7

    .line 736
    .end local v3    # "sp":I
    .local p1, "sp":I
    :cond_10
    return v1
.end method

.method public static encodeUTF8([CII[B)I
    .locals 11
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "bytes"    # [B

    .line 590
    add-int v0, p1, p2

    .line 591
    .local v0, "sl":I
    const/4 v1, 0x0

    .line 592
    .local v1, "dp":I
    array-length v2, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 595
    .local v2, "dlASCII":I
    :goto_0
    const/16 v3, 0x80

    if-ge v1, v2, :cond_0

    aget-char v4, p0, p1

    if-ge v4, v3, :cond_0

    .line 596
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "dp":I
    .local v3, "dp":I
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "offset":I
    .local v4, "offset":I
    aget-char p1, p0, p1

    int-to-byte p1, p1

    aput-byte p1, p3, v1

    move v1, v3

    move p1, v4

    goto :goto_0

    .line 599
    .end local v3    # "dp":I
    .end local v4    # "offset":I
    .restart local v1    # "dp":I
    .restart local p1    # "offset":I
    :cond_0
    :goto_1
    if-ge p1, v0, :cond_9

    .line 600
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    aget-char p1, p0, p1

    .line 601
    .local p1, "c":C
    if-ge p1, v3, :cond_1

    .line 603
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    int-to-byte v6, p1

    aput-byte v6, p3, v1

    move p1, v4

    move v1, v5

    goto/16 :goto_4

    .line 604
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_1
    const/16 v5, 0x800

    if-ge p1, v5, :cond_2

    .line 606
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, p3, v1

    .line 607
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    and-int/lit8 v6, p1, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    move p1, v4

    goto/16 :goto_4

    .line 608
    :cond_2
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt p1, v5, :cond_8

    const v5, 0xe000

    if-ge p1, v5, :cond_8

    .line 610
    add-int/lit8 v5, v4, -0x1

    .line 611
    .local v5, "ip":I
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    const-string v8, "encodeUTF8 error"

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    .line 612
    sub-int v7, v0, v5

    const/4 v10, 0x2

    if-ge v7, v10, :cond_3

    .line 613
    const/4 v7, -0x1

    .local v7, "uc":I
    goto :goto_2

    .line 615
    .end local v7    # "uc":I
    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    .line 616
    .local v7, "d":C
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 617
    invoke-static {p1, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    .line 621
    .end local v7    # "d":C
    .local v8, "uc":I
    move v7, v8

    goto :goto_2

    .line 619
    .end local v8    # "uc":I
    .restart local v7    # "d":C
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v6, v9}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v3, v8, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 623
    .end local v7    # "d":C
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_7

    .line 626
    move v7, p1

    .line 630
    .local v7, "uc":I
    :goto_2
    if-gez v7, :cond_6

    .line 631
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "dp":I
    .local v8, "dp":I
    aput-byte v6, p3, v1

    goto :goto_3

    .line 633
    .end local v8    # "dp":I
    .restart local v1    # "dp":I
    :cond_6
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "dp":I
    .restart local v8    # "dp":I
    shr-int/lit8 v9, v7, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p3, v1

    .line 634
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "dp":I
    .restart local v1    # "dp":I
    shr-int/lit8 v9, v7, 0xc

    and-int/2addr v9, v6

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 635
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "dp":I
    .restart local v8    # "dp":I
    shr-int/lit8 v9, v7, 0x6

    and-int/2addr v6, v9

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v1

    .line 636
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "dp":I
    .restart local v1    # "dp":I
    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v8

    .line 637
    add-int/lit8 v4, v4, 0x1

    move v8, v1

    .line 639
    .end local v1    # "dp":I
    .end local v5    # "ip":I
    .end local v7    # "uc":I
    .restart local v8    # "dp":I
    :goto_3
    move p1, v4

    move v1, v8

    goto :goto_4

    .line 624
    .end local v8    # "dp":I
    .restart local v1    # "dp":I
    .restart local v5    # "ip":I
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v6, v9}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v3, v8, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 641
    .end local v5    # "ip":I
    :cond_8
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    shr-int/lit8 v7, p1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, p3, v1

    .line 642
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v6, v7

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 643
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    and-int/lit8 v6, p1, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v1

    move p1, v4

    move v1, v5

    .line 645
    .end local v4    # "offset":I
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    .local p1, "offset":I
    :goto_4
    goto/16 :goto_1

    .line 646
    :cond_9
    return v1
.end method

.method public static firstIdentifier(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 384
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getChars(BI[C)V
    .locals 6
    .param p0, "b"    # B
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 310
    move v0, p0

    .line 312
    .local v0, "i":I
    move v1, p1

    .line 313
    .local v1, "charPos":I
    const/4 v2, 0x0

    .line 315
    .local v2, "sign":C
    if-gez v0, :cond_0

    .line 316
    const/16 v2, 0x2d

    .line 317
    neg-int v0, v0

    .line 323
    :cond_0
    const v3, 0xcccd

    mul-int v3, v3, v0

    ushr-int/lit8 v3, v3, 0x13

    .line 324
    .local v3, "q":I
    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 325
    .local v4, "r":I
    add-int/lit8 v1, v1, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v4

    aput-char v5, p2, v1

    .line 326
    move v0, v3

    .line 327
    if-nez v0, :cond_0

    .line 329
    if-eqz v2, :cond_1

    .line 330
    add-int/lit8 v1, v1, -0x1

    aput-char v2, p2, v1

    .line 332
    :cond_1
    return-void
.end method

.method public static getChars(II[C)V
    .locals 5
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 278
    move v0, p1

    .line 279
    .local v0, "p":I
    const/4 v1, 0x0

    .line 281
    .local v1, "sign":C
    if-gez p0, :cond_0

    .line 282
    const/16 v1, 0x2d

    .line 283
    neg-int p0, p0

    .line 286
    :cond_0
    :goto_0
    const/high16 v2, 0x10000

    if-lt p0, v2, :cond_1

    .line 287
    div-int/lit8 v2, p0, 0x64

    .line 289
    .local v2, "q":I
    shl-int/lit8 v3, v2, 0x6

    shl-int/lit8 v4, v2, 0x5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    sub-int v3, p0, v3

    .line 290
    .local v3, "r":I
    move p0, v2

    .line 291
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    .line 292
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    goto :goto_0

    .line 298
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_1
    const v2, 0xcccd

    mul-int v2, v2, p0

    ushr-int/lit8 v2, v2, 0x13

    .line 299
    .restart local v2    # "q":I
    shl-int/lit8 v3, v2, 0x3

    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    sub-int v3, p0, v3

    .line 300
    .restart local v3    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    .line 301
    move p0, v2

    .line 302
    if-nez p0, :cond_1

    .line 304
    if-eqz v1, :cond_2

    .line 305
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p2, v0

    .line 307
    :cond_2
    return-void
.end method

.method public static getChars(JI[C)V
    .locals 8
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .line 228
    move v0, p2

    .line 229
    .local v0, "charPos":I
    const/4 v1, 0x0

    .line 231
    .local v1, "sign":C
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 232
    const/16 v1, 0x2d

    .line 233
    neg-long p0, p0

    .line 237
    :cond_0
    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p0, v2

    if-lez v4, :cond_1

    .line 238
    const-wide/16 v2, 0x64

    div-long v2, p0, v2

    .line 240
    .local v2, "q":J
    const/4 v4, 0x6

    shl-long v4, v2, v4

    const/4 v6, 0x5

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    sub-long v4, p0, v4

    long-to-int v5, v4

    .line 241
    .local v5, "r":I
    move-wide p0, v2

    .line 242
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v5

    aput-char v4, p3, v0

    .line 243
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v4, v4, v5

    aput-char v4, p3, v0

    goto :goto_0

    .line 248
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v2, p0

    .line 249
    .local v2, "i2":I
    :goto_1
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2

    .line 250
    div-int/lit8 v3, v2, 0x64

    .line 252
    .local v3, "q2":I
    shl-int/lit8 v4, v3, 0x6

    shl-int/lit8 v5, v3, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 253
    .local v4, "r":I
    move v2, v3

    .line 254
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 255
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    goto :goto_1

    .line 261
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_2
    const v3, 0xcccd

    mul-int v3, v3, v2

    ushr-int/lit8 v3, v3, 0x13

    .line 262
    .restart local v3    # "q2":I
    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 263
    .restart local v4    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 264
    move v2, v3

    .line 265
    if-nez v2, :cond_2

    .line 267
    if-eqz v1, :cond_3

    .line 268
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p3, v0

    .line 270
    :cond_3
    return-void
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 97
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static isIdent(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 388
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 762
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 766
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 767
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 768
    .local v3, "ch":C
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 769
    return v0

    .line 766
    .end local v3    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 763
    :cond_3
    :goto_1
    return v0
.end method

.method public static loadPropertiesFromFile()V
    .locals 2

    .line 101
    new-instance v0, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 112
    .local v0, "imputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 120
    :cond_0
    :goto_0
    return-void
.end method

.method public static readAll(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    :try_start_0
    new-array v1, v1, [C

    .line 748
    .local v1, "chars":[C
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .local v2, "len":I
    if-gez v2, :cond_0

    .line 750
    nop

    .line 756
    .end local v1    # "chars":[C
    .end local v2    # "len":I
    nop

    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 752
    .restart local v1    # "chars":[C
    .restart local v2    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    nop

    .end local v2    # "len":I
    goto :goto_0

    .line 754
    .end local v1    # "chars":[C
    :catch_0
    move-exception v1

    .line 755
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "read string from reader error"

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 358
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 5
    .param p0, "x"    # J

    .line 217
    const-wide/16 v0, 0xa

    .line 218
    .local v0, "p":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 219
    cmp-long v3, p0, v0

    if-gez v3, :cond_0

    return v2

    .line 220
    :cond_0
    const-wide/16 v3, 0xa

    mul-long v0, v0, v3

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_1
    return v3
.end method
