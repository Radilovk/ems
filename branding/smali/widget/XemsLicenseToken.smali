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

.field public ems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public expiresS:J

.field public features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public plan:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->license:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->plan:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->modules:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->features:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->ems:Ljava/util/List;

    .line 39
    return-void
.end method

.method static b64(Ljava/lang/String;)[B
    .registers 12

    .line 123
    nop

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    if-ge v2, v3, :cond_20

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1d

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 131
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 132
    mul-int/lit8 v2, p0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v3, v2, [B

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_31
    if-ge v5, p0, :cond_51

    .line 137
    shl-int/lit8 v7, v7, 0x6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    or-int/2addr v7, v9

    .line 138
    add-int/lit8 v8, v8, 0x6

    .line 139
    const/16 v9, 0x8

    if-lt v8, v9, :cond_4e

    .line 140
    add-int/lit8 v8, v8, -0x8

    .line 141
    add-int/lit8 v9, v6, 0x1

    shr-int v10, v7, v8

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    move v6, v9

    .line 136
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 144
    :cond_51
    if-ne v6, v2, :cond_54

    .line 145
    return-object v3

    .line 147
    :cond_54
    new-array p0, v6, [B

    .line 148
    invoke-static {v3, v1, p0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    return-object p0
.end method

.method static b64url(Ljava/lang/String;)[B
    .registers 3

    .line 119
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;
    .registers 3

    .line 95
    if-eqz p0, :cond_8

    array-length v0, p0

    if-lez v0, :cond_8

    .line 96
    const/4 v0, 0x0

    aput-object p1, p0, v0

    .line 98
    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method static num(Ljava/lang/Object;)J
    .registers 3

    .line 106
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 107
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 110
    :cond_b
    const-wide/16 v0, 0x0

    if-nez p0, :cond_10

    :goto_f
    goto :goto_19

    :cond_10
    :try_start_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_1a

    goto :goto_f

    :goto_19
    return-wide v0

    .line 111
    :catch_1a
    move-exception p0

    .line 112
    return-wide v0
.end method

.method public static parseFlat(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->object()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    if-nez p0, :cond_b

    const-string p0, ""

    .line 306
    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    if-ge v2, v3, :cond_44

    .line 307
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 308
    const/16 v5, 0x5c

    if-eq v3, v4, :cond_3b

    if-ne v3, v5, :cond_20

    goto :goto_3b

    .line 310
    :cond_20
    const/16 v4, 0x20

    if-ge v3, v4, :cond_37

    .line 311
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "\\u%04x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 313
    :cond_37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 309
    :cond_3b
    :goto_3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 316
    :cond_44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static str(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 102
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;
    .registers 7

    .line 44
    if-eqz p0, :cond_138

    const/16 v0, 0x2e

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_d

    goto/16 :goto_138

    .line 47
    :cond_d
    if-eqz p1, :cond_131

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_131

    .line 50
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64url(Ljava/lang/String;)[B

    move-result-object p0

    .line 53
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 54
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 56
    sget-object p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 57
    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_5b

    .line 58
    const-string p0, "bad_signature"

    invoke-static {p3, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object p0

    return-object p0

    .line 60
    :cond_5b
    new-instance p0, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->b64url(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 61
    new-instance p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    invoke-direct {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;-><init>()V

    .line 62
    const-string v0, "lic"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->license:Ljava/lang/String;

    .line 63
    const-string v0, "dev"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    .line 64
    const-string v0, "plan"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->plan:Ljava/lang/String;

    .line 65
    const-string v0, "iat"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->issuedS:J

    .line 66
    const-string v0, "exp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->expiresS:J

    .line 67
    const-string v0, "mods"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_cf

    .line 69
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->modules:Ljava/util/List;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_bb

    .line 73
    :cond_cf
    const-string v0, "feat"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_f3

    .line 75
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 76
    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->features:Ljava/util/List;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_df

    .line 79
    :cond_f3
    const-string v0, "ems"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 80
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_117

    .line 81
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_103
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 82
    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->ems:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_103

    .line 85
    :cond_117
    if-eqz p2, :cond_130

    iget-object p0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_130

    iget-object p0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->device:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_130

    .line 86
    const-string p0, "other_device"

    invoke-static {p3, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object p0

    return-object p0

    .line 88
    :cond_130
    return-object p1

    .line 48
    :cond_131
    :goto_131
    const-string p0, "no_server_key"

    invoke-static {p3, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object p0

    return-object p0

    .line 45
    :cond_138
    :goto_138
    const-string p0, "bad_format"

    invoke-static {p3, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object p0
    :try_end_13e
    .catchall {:try_start_4 .. :try_end_13e} :catchall_13f

    return-object p0

    .line 89
    :catchall_13f
    move-exception p0

    .line 90
    const-string p0, "bad_token"

    invoke-static {p3, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->fail([Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object p0

    return-object p0
.end method
