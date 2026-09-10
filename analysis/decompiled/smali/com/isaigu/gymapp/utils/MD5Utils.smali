.class public Lcom/isaigu/gymapp/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    const-string v7, "md5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 34
    .local v2, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v7, "utf-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 35
    .local v5, "result":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v1, "buffer":Ljava/lang/StringBuffer;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-byte v0, v5, v7

    .line 39
    .local v0, "b":B
    and-int/lit16 v4, v0, 0xff

    .line 40
    .local v4, "number":I
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 42
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "b":B
    .end local v4    # "number":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 50
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "result":[B
    :goto_1
    return-object v7

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 50
    const-string v7, ""

    goto :goto_1
.end method
