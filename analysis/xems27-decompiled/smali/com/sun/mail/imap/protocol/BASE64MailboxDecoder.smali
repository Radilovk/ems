.class public Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;
.super Ljava/lang/Object;
.source "BASE64MailboxDecoder.java"


# static fields
.field static final pem_array:[C

.field private static final pem_convert_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 175
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 175
    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    .line 186
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    .line 191
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 193
    .end local v0    # "i":I
    return-void

    .line 192
    .restart local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
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
        0x2bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static base64decode([CILjava/text/CharacterIterator;)I
    .locals 15
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "iter"    # Ljava/text/CharacterIterator;

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "firsttime":Z
    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    move/from16 v0, p1

    .line 93
    .end local p1    # "offset":I
    .local v0, "offset":I
    .local v1, "firsttime":Z
    .local v2, "leftover":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    int-to-byte v3, v3

    .line 94
    .local v3, "orig_0":B
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 95
    :cond_0
    const/16 v5, 0x2d

    if-ne v3, v5, :cond_1

    .line 96
    if-eqz v1, :cond_a

    .line 98
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x26

    aput-char v5, p0, v0

    .line 101
    move v0, v4

    goto/16 :goto_3

    .line 103
    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    const/4 v1, 0x0

    .line 106
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v6

    int-to-byte v6, v6

    .line 107
    .local v6, "orig_1":B
    if-eq v6, v4, :cond_a

    if-ne v6, v5, :cond_2

    .line 108
    goto/16 :goto_3

    .line 111
    :cond_2
    sget-object v7, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v8, v3, 0xff

    aget-byte v8, v7, v8

    .line 112
    .local v8, "a":B
    and-int/lit16 v9, v6, 0xff

    aget-byte v7, v7, v9

    .line 114
    .local v7, "b":B
    shl-int/lit8 v9, v8, 0x2

    and-int/lit16 v9, v9, 0xfc

    ushr-int/lit8 v10, v7, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .line 117
    .local v9, "current":B
    if-eq v2, v4, :cond_3

    .line 118
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "offset":I
    .local v10, "offset":I
    shl-int/lit8 v11, v2, 0x8

    and-int/lit16 v12, v9, 0xff

    or-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, p0, v0

    .line 119
    const/4 v0, -0x1

    .line 120
    .end local v2    # "leftover":I
    .local v0, "leftover":I
    move v2, v0

    move v0, v10

    goto :goto_1

    .line 121
    .end local v10    # "offset":I
    .local v0, "offset":I
    .restart local v2    # "leftover":I
    :cond_3
    and-int/lit16 v2, v9, 0xff

    .line 124
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v10

    int-to-byte v10, v10

    .line 125
    .local v10, "orig_2":B
    const/16 v11, 0x3d

    if-ne v10, v11, :cond_4

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    if-eq v10, v4, :cond_a

    if-ne v10, v5, :cond_5

    .line 128
    goto :goto_3

    .line 132
    :cond_5
    move v8, v7

    .line 133
    sget-object v12, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v13, v10, 0xff

    aget-byte v7, v12, v13

    .line 134
    shl-int/lit8 v12, v8, 0x4

    and-int/lit16 v12, v12, 0xf0

    ushr-int/lit8 v13, v7, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v9, v12

    .line 137
    if-eq v2, v4, :cond_6

    .line 138
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "offset":I
    .local v12, "offset":I
    shl-int/lit8 v13, v2, 0x8

    and-int/lit16 v14, v9, 0xff

    or-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, p0, v0

    .line 139
    const/4 v0, -0x1

    .line 140
    .end local v2    # "leftover":I
    .local v0, "leftover":I
    move v2, v0

    move v0, v12

    goto :goto_2

    .line 141
    .end local v12    # "offset":I
    .local v0, "offset":I
    .restart local v2    # "leftover":I
    :cond_6
    and-int/lit16 v2, v9, 0xff

    .line 144
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v12

    int-to-byte v12, v12

    .line 145
    .local v12, "orig_3":B
    if-ne v12, v11, :cond_7

    .line 146
    goto/16 :goto_0

    .line 147
    :cond_7
    if-eq v12, v4, :cond_a

    if-ne v12, v5, :cond_8

    .line 148
    goto :goto_3

    .line 152
    :cond_8
    move v5, v7

    .line 153
    .end local v8    # "a":B
    .local v5, "a":B
    sget-object v8, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v11, v12, 0xff

    aget-byte v7, v8, v11

    .line 154
    shl-int/lit8 v8, v5, 0x6

    and-int/lit16 v8, v8, 0xc0

    and-int/lit8 v11, v7, 0x3f

    or-int/2addr v8, v11

    int-to-byte v8, v8

    .line 157
    .end local v9    # "current":B
    .local v8, "current":B
    if-eq v2, v4, :cond_9

    .line 158
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .restart local v4    # "offset":I
    shl-int/lit8 v9, v2, 0x8

    and-int/lit16 v11, v8, 0xff

    or-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, p0, v0

    .line 159
    const/4 v2, -0x1

    .line 160
    move v0, v4

    goto/16 :goto_0

    .line 161
    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    :cond_9
    and-int/lit16 v2, v8, 0xff

    .line 91
    .end local v3    # "orig_0":B
    .end local v5    # "a":B
    .end local v6    # "orig_1":B
    .end local v7    # "b":B
    .end local v8    # "current":B
    .end local v10    # "orig_2":B
    .end local v12    # "orig_3":B
    goto/16 :goto_0

    .line 165
    :cond_a
    :goto_3
    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "original"    # Ljava/lang/String;

    .line 57
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    .local v0, "changedString":Z
    const/4 v1, 0x0

    .line 63
    .local v1, "copyTo":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [C

    .line 64
    .local v2, "chars":[C
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "iter":Ljava/text/StringCharacterIterator;
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->first()C

    move-result v4

    .local v4, "c":C
    :goto_0
    const v5, 0xffff

    if-ne v4, v5, :cond_2

    .line 78
    .end local v4    # "c":C
    if-eqz v0, :cond_1

    .line 79
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 81
    :cond_1
    return-object p0

    .line 69
    .restart local v4    # "c":C
    :cond_2
    const/16 v5, 0x26

    if-ne v4, v5, :cond_3

    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-static {v2, v1, v3}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->base64decode([CILjava/text/CharacterIterator;)I

    move-result v1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "copyTo":I
    .local v5, "copyTo":I
    aput-char v4, v2, v1

    move v1, v5

    .line 67
    .end local v5    # "copyTo":I
    .restart local v1    # "copyTo":I
    :goto_1
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result v4

    goto :goto_0

    .line 58
    .end local v0    # "changedString":Z
    .end local v1    # "copyTo":I
    .end local v2    # "chars":[C
    .end local v3    # "iter":Ljava/text/StringCharacterIterator;
    .end local v4    # "c":C
    :cond_4
    :goto_2
    return-object p0
.end method
