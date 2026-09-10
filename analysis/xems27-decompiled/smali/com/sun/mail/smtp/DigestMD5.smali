.class public Lcom/sun/mail/smtp/DigestMD5;
.super Ljava/lang/Object;
.source "DigestMD5.java"


# static fields
.field private static digits:[C


# instance fields
.field private clientResponse:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private md5:Ljava/security/MessageDigest;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 222
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 223
    nop

    .line 224
    nop

    .line 222
    sput-object v0, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    .line 225
    return-void

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/util/MailLogger;)V
    .locals 2
    .param p1, "logger"    # Lcom/sun/mail/util/MailLogger;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "DEBUG DIGEST-MD5"

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/util/MailLogger;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    .line 66
    const-string v0, "DIGEST-MD5 Loaded"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 231
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 233
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 238
    .end local v1    # "index":I
    .end local v2    # "i":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 234
    .restart local v1    # "index":I
    .restart local v2    # "i":I
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 235
    .local v3, "temp":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    sget-object v5, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    .line 236
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 233
    .end local v3    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private tokenize(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 10
    .param p1, "serverResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 182
    .local v0, "map":Ljava/util/Hashtable;
    const-string v1, "iso-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 183
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .line 186
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/io/StreamTokenizer;

    .line 187
    new-instance v5, Ljava/io/InputStreamReader;

    .line 188
    new-instance v6, Lcom/sun/mail/util/BASE64DecoderStream;

    .line 189
    new-instance v7, Ljava/io/ByteArrayInputStream;

    array-length v8, v2

    const/4 v9, 0x4

    sub-int/2addr v8, v9

    invoke-direct {v7, v2, v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 188
    invoke-direct {v6, v7}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 190
    nop

    .line 187
    invoke-direct {v5, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 186
    invoke-direct {v4, v5}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 185
    move-object v1, v4

    .line 194
    .local v1, "tokens":Ljava/io/StreamTokenizer;
    const/16 v4, 0x30

    const/16 v5, 0x39

    invoke-virtual {v1, v4, v5}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 195
    invoke-virtual {v1, v4, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 196
    nop

    :goto_0
    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    move v5, v4

    .local v5, "ttype":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 219
    return-object v0

    .line 197
    :cond_0
    const/4 v4, -0x3

    if-eq v5, v4, :cond_1

    const/16 v4, 0x22

    if-eq v5, v4, :cond_2

    goto :goto_0

    .line 199
    :cond_1
    if-nez v3, :cond_2

    .line 200
    iget-object v3, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 201
    goto :goto_0

    .line 205
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received => "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 208
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    goto :goto_1

    .line 211
    :cond_4
    iget-object v4, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_1
    const/4 v3, 0x0

    .line 214
    goto :goto_0
.end method


# virtual methods
.method public authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "serverChallenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 84
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    const v3, 0x7fffffff

    invoke-direct {v0, v2, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v3, v0

    .line 88
    .local v3, "b64os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 89
    .local v0, "random":Ljava/security/SecureRandom;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 94
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v4, "result":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "smtp/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    .line 97
    const-string v5, "00000001"

    .line 98
    .local v5, "nc":Ljava/lang/String;
    const-string v7, "auth"

    .line 99
    .local v7, "qop":Ljava/lang/String;
    const/16 v8, 0x20

    new-array v8, v8, [B

    .line 102
    .local v8, "bytes":[B
    iget-object v9, v1, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v10, "Begin authentication ..."

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 105
    move-object/from16 v9, p5

    invoke-direct {v1, v9}, Lcom/sun/mail/smtp/DigestMD5;->tokenize(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v10

    .line 107
    .local v10, "map":Ljava/util/Hashtable;
    if-nez p4, :cond_1

    .line 108
    const-string v11, "realm"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 109
    .local v11, "text":Ljava/lang/String;
    if-eqz v11, :cond_0

    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ","

    invoke-direct {v12, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 110
    :cond_0
    move-object v12, v6

    .line 109
    :goto_0
    nop

    .end local p4    # "realm":Ljava/lang/String;
    .local v12, "realm":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "realm":Ljava/lang/String;
    .restart local p4    # "realm":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p4

    .line 114
    .end local p4    # "realm":Ljava/lang/String;
    .restart local v12    # "realm":Ljava/lang/String;
    :goto_1
    const-string v11, "nonce"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 116
    .local v11, "nonce":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 117
    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 118
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 121
    const-string v13, "iso-8859-1"

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, "cnonce":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 125
    iget-object v14, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    .line 126
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .end local v0    # "random":Ljava/security/SecureRandom;
    .local v16, "random":Ljava/security/SecureRandom;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 125
    invoke-virtual {v14, v15}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/security/MessageDigest;->update([B)V

    .line 127
    iget-object v14, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/security/MessageDigest;->update([B)V

    .line 128
    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    iput-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    .line 132
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "AUTHENTICATE:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-static {v15}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "username=\""

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",realm=\""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",qop="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",nc="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",nonce=\""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",cnonce=\""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",digest-uri=\""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ",response="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, v1, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "Response => "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 147
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 149
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 90
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "nc":Ljava/lang/String;
    .end local v7    # "qop":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v10    # "map":Ljava/util/Hashtable;
    .end local v11    # "nonce":Ljava/lang/String;
    .end local v12    # "realm":Ljava/lang/String;
    .end local v13    # "cnonce":Ljava/lang/String;
    .end local v16    # "random":Ljava/security/SecureRandom;
    .restart local p4    # "realm":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v9, p5

    .line 91
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    iget-object v4, v1, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "NoSuchAlgorithmException"

    invoke-virtual {v4, v5, v6, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public authServer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "serverResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/DigestMD5;->tokenize(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 163
    .local v0, "map":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 164
    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 165
    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "text":Ljava/lang/String;
    const-string v2, "rspauth"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/sun/mail/smtp/DigestMD5;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected => rspauth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 169
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 171
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
