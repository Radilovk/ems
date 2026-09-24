.class public final Lcom/isaigu/gymapp/widget/XemsLicenseToken;
.super Ljava/lang/Object;
.source "XemsLicenseToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field public device:Ljava/lang/String;

.field public expiresS:J

.field public features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public issuedS:J

.field public license:Ljava/lang/String;

.field public modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public plan:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->license:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->plan:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->modules:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->features:Ljava/util/List;

    .line 37
    return-void
.end method

.method static b64(Ljava/lang/String;)[B
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 115
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 117
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 119
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1c

    .line 120
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 123
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 124
    mul-int/lit8 v0, v9, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v4, v0, [B

    move v5, v1

    move v0, v1

    move v6, v1

    move v3, v1

    .line 128
    :goto_2d
    if-ge v5, v9, :cond_4d

    .line 129
    shl-int/lit8 v2, v6, 0x6

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    or-int/2addr v6, v2

    .line 130
    add-int/lit8 v0, v0, 0x6

    .line 131
    const/16 v2, 0x8

    if-lt v0, v2, :cond_58

    .line 132
    add-int/lit8 v0, v0, -0x8

    .line 133
    add-int/lit8 v2, v3, 0x1

    shr-int v10, v6, v0

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    .line 128
    :goto_49
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_2d

    .line 136
    :cond_4d
    array-length v0, v4

    if-ne v3, v0, :cond_52

    move-object v0, v4

    .line 141
    :goto_51
    return-object v0

    .line 139
    :cond_52
    new-array v0, v3, [B

    .line 140
    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_51

    :cond_58
    move v2, v3

    goto :goto_49
.end method

.method static b64url(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 111
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;
    .registers 3

    .prologue
    .line 87
    if-eqz p0, :cond_8

    array-length v0, p0

    if-lez v0, :cond_8

    .line 88
    const/4 v0, 0x0

    aput-object p1, p0, v0

    .line 90
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method static num(Ljava/lang/Object;)J
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 98
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_d

    .line 99
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 104
    :cond_c
    :goto_c
    return-wide v0

    .line 102
    :cond_d
    if-eqz p0, :cond_c

    :try_start_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_18

    move-result-wide v0

    goto :goto_c

    .line 103
    :catch_18
    move-exception v2

    goto :goto_c
.end method

.method public static parseFlat(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->object()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    const/4 v1, 0x0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    if-nez p0, :cond_10

    const-string p0, ""

    :cond_10
    move v0, v1

    .line 298
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 300
    if-eq v3, v6, :cond_1f

    if-ne v3, v7, :cond_29

    .line 301
    :cond_1f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 302
    :cond_29
    const/16 v4, 0x20

    if-ge v3, v4, :cond_40

    .line 303
    const-string v4, "\\u%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 305
    :cond_40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 308
    :cond_44
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static str(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;
    .registers 10

    .prologue
    .line 42
    if-eqz p0, :cond_b

    const/16 v0, 0x2e

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_12

    .line 43
    :cond_b
    const-string v0, "bad_format"

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object v0

    .line 82
    :goto_11
    return-object v0

    .line 45
    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    .line 46
    :cond_1a
    const-string v0, "no_server_key"

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object v0

    goto :goto_11

    .line 48
    :cond_21
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64url(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 52
    const-string v3, "SHA256withECDSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 54
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/Signature;->update([B)V

    .line 55
    invoke-virtual {v3, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_68

    .line 56
    const-string v0, "bad_signature"

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object v0

    goto :goto_11

    .line 58
    :cond_68
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64url(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 59
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;-><init>()V

    .line 60
    const-string v0, "lic"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->license:Ljava/lang/String;

    .line 61
    const-string v0, "dev"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    .line 62
    const-string v0, "plan"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->plan:Ljava/lang/String;

    .line 63
    const-string v0, "iat"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->issuedS:J

    .line 64
    const-string v0, "exp"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->expiresS:J

    .line 65
    const-string v0, "mods"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_e5

    .line 67
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 68
    iget-object v4, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->modules:Ljava/util/List;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_db} :catch_dc

    goto :goto_c8

    .line 81
    :catch_dc
    move-exception v0

    .line 82
    const-string v0, "bad_token"

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object v0

    goto/16 :goto_11

    .line 71
    :cond_e5
    :try_start_e5
    const-string v0, "feat"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_109

    .line 73
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->features:Ljava/util/List;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    .line 77
    :cond_109
    if-eqz p2, :cond_123

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_123

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    .line 78
    const-string v0, "other_device"

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_120} :catch_dc

    move-result-object v0

    goto/16 :goto_11

    :cond_123
    move-object v0, v1

    .line 80
    goto/16 :goto_11
.end method
