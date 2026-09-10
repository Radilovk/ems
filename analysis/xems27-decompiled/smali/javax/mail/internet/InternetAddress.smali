.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ignoreBogusGroupName:Z

.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    nop

    .line 85
    const-string v0, "mail.mime.address.ignorebogusgroupname"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    .line 339
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 338
    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 1141
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 111
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 113
    .local v1, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 122
    const/4 v0, 0x0

    aget-object v2, v1, v0

    iget-object v2, v2, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 123
    aget-object v2, v1, v0

    iget-object v2, v2, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v2, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 124
    aget-object v0, v1, v0

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 125
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v0, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 174
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 140
    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 146
    :cond_1
    :goto_0
    return-void
.end method

.method static _getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 6
    .param p0, "session"    # Ljavax/mail/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljavax/mail/internet/AddressException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    .local v0, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 534
    .local v2, "address":Ljava/lang/String;
    const-string v3, "user.name"

    if-nez p0, :cond_0

    .line 535
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v1

    .line 537
    goto :goto_0

    .line 538
    :cond_0
    const-string v4, "mail.from"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    if-nez v2, :cond_6

    .line 540
    const-string v4, "mail.user"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 542
    :cond_1
    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 544
    :cond_3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_4
    const-string v3, "mail.host"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 547
    :cond_5
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_6
    :goto_0
    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 552
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "()<>,;:\\\"[]@\t "

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 556
    :cond_7
    if-nez v2, :cond_8

    .line 557
    const/4 v3, 0x0

    return-object v3

    .line 559
    :cond_8
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v3, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 10
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1153
    const/4 v0, 0x0

    .line 1155
    .local v0, "start":I
    if-eqz p0, :cond_20

    .line 1157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1158
    .local v1, "len":I
    if-eqz v1, :cond_1f

    .line 1165
    const/16 v2, 0x40

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1170
    const/4 v0, 0x0

    :goto_0
    const-string v3, ",:"

    invoke-static {p0, v3, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    .local v4, "i":I
    if-gez v3, :cond_0

    move v3, v0

    goto :goto_1

    .line 1172
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1174
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_1

    .line 1176
    add-int/lit8 v0, v4, 0x1

    .line 1177
    move v3, v0

    goto :goto_1

    .line 1171
    :cond_1
    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 1173
    :cond_2
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v3, "Illegal route-addr"

    invoke-direct {v2, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1190
    .end local v4    # "i":I
    :cond_3
    move v3, v0

    .end local v0    # "start":I
    .local v3, "start":I
    :goto_1
    const v0, 0xffff

    .line 1191
    .local v0, "c":C
    const v4, 0xffff

    .line 1192
    .local v4, "lastc":C
    const/4 v5, 0x0

    .line 1193
    .local v5, "inquote":Z
    move v6, v3

    .local v6, "i":I
    :goto_2
    const/16 v7, 0x7f

    const/16 v8, 0x20

    if-lt v6, v1, :cond_4

    goto :goto_5

    .line 1194
    :cond_4
    move v4, v0

    .line 1195
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1198
    const/16 v9, 0x5c

    if-eq v0, v9, :cond_1e

    if-ne v4, v9, :cond_5

    .line 1199
    goto/16 :goto_9

    .line 1200
    :cond_5
    const/16 v9, 0x22

    if-ne v0, v9, :cond_b

    .line 1201
    if-eqz v5, :cond_8

    .line 1203
    if-eqz p2, :cond_7

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_7

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_6

    goto :goto_3

    .line 1204
    :cond_6
    new-instance v2, Ljavax/mail/internet/AddressException;

    .line 1205
    nop

    .line 1204
    const-string v7, "Quote not at end of local address"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1206
    :cond_7
    :goto_3
    const/4 v5, 0x0

    .line 1207
    goto/16 :goto_9

    .line 1208
    :cond_8
    if-eqz p2, :cond_a

    if-nez v6, :cond_9

    goto :goto_4

    .line 1209
    :cond_9
    new-instance v2, Ljavax/mail/internet/AddressException;

    .line 1210
    nop

    .line 1209
    const-string v7, "Quote not at start of local address"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1211
    :cond_a
    :goto_4
    const/4 v5, 0x1

    .line 1213
    goto/16 :goto_9

    .line 1215
    :cond_b
    if-eqz v5, :cond_c

    .line 1216
    goto/16 :goto_9

    .line 1217
    :cond_c
    if-ne v0, v2, :cond_1b

    .line 1218
    if-eqz v6, :cond_1a

    .line 1229
    :goto_5
    if-nez v5, :cond_19

    .line 1244
    if-eq v0, v2, :cond_e

    .line 1245
    if-nez p2, :cond_d

    .line 1247
    return-void

    .line 1246
    :cond_d
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing final \'@domain\'"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1252
    :cond_e
    add-int/lit8 v2, v6, 0x1

    .line 1253
    .end local v3    # "start":I
    .local v2, "start":I
    if-ge v2, v1, :cond_18

    .line 1256
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x2e

    if-eq v3, v9, :cond_17

    .line 1258
    move v3, v2

    .end local v6    # "i":I
    .local v3, "i":I
    :goto_6
    if-lt v3, v1, :cond_10

    .line 1286
    if-eq v4, v9, :cond_f

    .line 1288
    return-void

    .line 1287
    :cond_f
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Domain ends with dot"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1259
    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1260
    const/16 v6, 0x5b

    if-ne v0, v6, :cond_11

    .line 1261
    return-void

    .line 1262
    :cond_11
    if-le v0, v8, :cond_16

    if-ge v0, v7, :cond_16

    .line 1278
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_13

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_13

    if-ne v0, v9, :cond_12

    goto :goto_7

    .line 1279
    :cond_12
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1280
    nop

    .line 1279
    const-string v7, "Domain contains illegal character"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1281
    :cond_13
    :goto_7
    if-ne v0, v9, :cond_15

    if-eq v4, v9, :cond_14

    goto :goto_8

    .line 1282
    :cond_14
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1283
    nop

    .line 1282
    const-string v7, "Domain contains dot-dot"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1284
    :cond_15
    :goto_8
    move v4, v0

    .line 1258
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1263
    :cond_16
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1264
    nop

    .line 1263
    const-string v7, "Domain contains control or whitespace"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1257
    .end local v3    # "i":I
    .restart local v6    # "i":I
    :cond_17
    new-instance v3, Ljavax/mail/internet/AddressException;

    const-string v7, "Domain starts with dot"

    invoke-direct {v3, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1254
    :cond_18
    new-instance v3, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing domain"

    invoke-direct {v3, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1230
    .end local v2    # "start":I
    .local v3, "start":I
    :cond_19
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Unterminated quote"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1219
    :cond_1a
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing local name"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1222
    :cond_1b
    if-le v0, v8, :cond_1d

    if-ge v0, v7, :cond_1d

    .line 1225
    const-string v7, "()<>,;:\\\"[]@"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1c

    goto :goto_9

    .line 1226
    :cond_1c
    new-instance v2, Ljavax/mail/internet/AddressException;

    .line 1227
    nop

    .line 1226
    const-string v7, "Local address contains illegal character"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1223
    :cond_1d
    new-instance v2, Ljavax/mail/internet/AddressException;

    .line 1224
    nop

    .line 1223
    const-string v7, "Local address contains control or whitespace"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1193
    :cond_1e
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1159
    .end local v3    # "start":I
    .end local v4    # "lastc":C
    .end local v5    # "inquote":Z
    .end local v6    # "i":I
    .local v0, "start":I
    :cond_1f
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v3, "Empty address"

    invoke-direct {v2, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1156
    .end local v1    # "len":I
    :cond_20
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Address is null"

    invoke-direct {v1, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;

    .line 518
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    goto :goto_0

    .line 519
    :catch_2
    move-exception v0

    .line 522
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLocalHostName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "host":Ljava/lang/String;
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 569
    .local v1, "me":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->isInetAddressLiteral(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_0
    return-object v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 1348
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1353
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1354
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1358
    .end local v2    # "i":I
    return v0

    .line 1355
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_1

    .line 1356
    return v2

    .line 1354
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1359
    .end local v1    # "len":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1360
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method

.method private static isInetAddressLiteral(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addr"    # Ljava/lang/String;

    .line 588
    const/4 v0, 0x0

    .local v0, "sawHex":Z
    const/4 v1, 0x0

    .line 589
    .local v1, "sawColon":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 602
    .end local v2    # "i":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x1

    return v2

    .line 590
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 591
    .local v3, "c":C
    const/16 v5, 0x30

    if-lt v3, v5, :cond_2

    const/16 v5, 0x39

    if-gt v3, v5, :cond_2

    .line 592
    goto :goto_1

    .line 593
    :cond_2
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_3

    .line 594
    goto :goto_1

    .line 595
    :cond_3
    const/16 v5, 0x61

    if-lt v3, v5, :cond_4

    const/16 v5, 0x7a

    if-le v3, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v3, v5, :cond_6

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_6

    .line 596
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 597
    :cond_6
    const/16 v5, 0x3a

    if-ne v3, v5, :cond_7

    .line 598
    const/4 v1, 0x1

    .line 589
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .restart local v3    # "c":C
    :cond_7
    return v4
.end method

.method private isSimple()Z
    .locals 2

    .line 1295
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 484
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 485
    return v1

    .line 487
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .line 497
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 498
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 500
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 615
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 638
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 25
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 678
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .local v1, "start_personal":I
    const/4 v2, -0x1

    .line 679
    .local v2, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 680
    .local v3, "length":I
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 681
    .local v6, "ignoreErrors":Z
    :goto_0
    const/4 v7, 0x0

    .line 682
    .local v7, "in_group":Z
    const/4 v8, 0x0

    .line 683
    .local v8, "route_addr":Z
    const/4 v9, 0x0

    .line 685
    .local v9, "rfc822":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v10, "v":Ljava/util/List;
    const/4 v11, -0x1

    move v12, v11

    .local v12, "end":I
    move v13, v11

    .local v13, "start":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    const/16 v15, 0x21

    const/16 v5, 0x40

    if-lt v14, v3, :cond_b

    .line 1067
    if-ltz v13, :cond_a

    .line 1073
    if-ne v12, v11, :cond_1

    .line 1074
    move v12, v3

    .line 1076
    :cond_1
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1077
    .local v11, "addr":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1078
    .local v16, "pers":Ljava/lang/String;
    if-eqz v9, :cond_3

    if-ltz v1, :cond_3

    .line 1080
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 1079
    invoke-static/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1081
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 1082
    const/16 v16, 0x0

    move-object/from16 v4, v16

    goto :goto_2

    .line 1081
    :cond_2
    move-object/from16 v4, v16

    goto :goto_2

    .line 1090
    :cond_3
    move-object/from16 v4, v16

    .end local v16    # "pers":Ljava/lang/String;
    .local v4, "pers":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 1091
    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-ltz v16, :cond_4

    .line 1092
    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_4

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_4

    .line 1093
    move-object v5, v11

    .line 1094
    .local v5, "tmp":Ljava/lang/String;
    move-object v11, v4

    .line 1095
    move-object v4, v5

    .line 1097
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_7

    if-nez p1, :cond_7

    if-eqz p2, :cond_5

    goto :goto_4

    .line 1107
    :cond_5
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v5, "st":Ljava/util/StringTokenizer;
    nop

    :goto_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_5

    .line 1109
    :cond_6
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1110
    .local v15, "a":Ljava/lang/String;
    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "st":Ljava/util/StringTokenizer;
    .local v16, "st":Ljava/util/StringTokenizer;
    invoke-static {v15, v5, v5}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1111
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1112
    .local v5, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v5, v15}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1113
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v16

    goto :goto_3

    .line 1098
    .end local v5    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v15    # "a":Ljava/lang/String;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    :cond_7
    :goto_4
    if-nez v6, :cond_8

    .line 1099
    const/4 v5, 0x0

    invoke-static {v11, v8, v5}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1100
    :cond_8
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1101
    .restart local v5    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v5, v11}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1102
    if-eqz v4, :cond_9

    .line 1103
    iput-object v4, v5, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 1104
    :cond_9
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    .end local v4    # "pers":Ljava/lang/String;
    .end local v5    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v11    # "addr":Ljava/lang/String;
    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/mail/internet/InternetAddress;

    .line 1119
    .local v4, "a":[Ljavax/mail/internet/InternetAddress;
    invoke-interface {v10, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1120
    return-object v4

    .line 689
    .end local v4    # "a":[Ljavax/mail/internet/InternetAddress;
    :cond_b
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 691
    .local v4, "c":C
    const/16 v15, 0x9

    if-eq v4, v15, :cond_5b

    const/16 v15, 0xa

    if-eq v4, v15, :cond_5b

    const/16 v15, 0xd

    if-eq v4, v15, :cond_5b

    const/16 v15, 0x20

    if-eq v4, v15, :cond_5b

    const-string v15, "Missing \'\"\'"

    const/16 v5, 0x22

    if-eq v4, v5, :cond_54

    const/16 v11, 0x2c

    if-eq v4, v11, :cond_49

    const/16 v11, 0x3e

    if-eq v4, v11, :cond_46

    const/16 v11, 0x5b

    if-eq v4, v11, :cond_40

    const/16 v11, 0x29

    const/16 v5, 0x28

    if-eq v4, v5, :cond_35

    if-eq v4, v11, :cond_32

    packed-switch v4, :pswitch_data_0

    .line 1061
    const/4 v5, -0x1

    if-ne v13, v5, :cond_c

    .line 1062
    move v5, v14

    move v13, v5

    const/4 v11, -0x1

    .end local v13    # "start":I
    .local v5, "start":I
    goto/16 :goto_24

    .line 1061
    .end local v5    # "start":I
    .restart local v13    # "start":I
    :cond_c
    move/from16 v18, v1

    move/from16 v20, v4

    const/4 v11, -0x1

    goto/16 :goto_23

    .line 741
    :pswitch_0
    const/4 v5, 0x1

    .line 742
    .end local v9    # "rfc822":Z
    .local v5, "rfc822":Z
    if-eqz v8, :cond_12

    .line 743
    if-eqz v6, :cond_11

    .line 748
    const/4 v9, -0x1

    if-ne v13, v9, :cond_d

    .line 749
    const/4 v8, 0x0

    .line 750
    const/4 v5, 0x0

    .line 751
    move v11, v9

    .end local v12    # "end":I
    .local v11, "end":I
    move v12, v9

    .line 752
    .end local v13    # "start":I
    .local v12, "start":I
    move v9, v5

    move v13, v12

    move v12, v11

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 754
    .end local v11    # "end":I
    .local v12, "end":I
    .restart local v13    # "start":I
    :cond_d
    if-nez v7, :cond_10

    .line 756
    if-ne v12, v9, :cond_e

    .line 757
    move v12, v14

    .line 758
    :cond_e
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 760
    .local v9, "addr":Ljava/lang/String;
    new-instance v11, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v11}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 761
    .local v11, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v11, v9}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 762
    if-ltz v1, :cond_f

    .line 763
    nop

    .line 764
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 765
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 763
    move/from16 v20, v4

    .end local v4    # "c":C
    .local v20, "c":C
    invoke-static/range {v18 .. v18}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_6

    .line 762
    .end local v20    # "c":C
    .restart local v4    # "c":C
    :cond_f
    move/from16 v20, v4

    .line 767
    .end local v4    # "c":C
    .restart local v20    # "c":C
    :goto_6
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const/4 v8, 0x0

    .line 770
    const/4 v5, 0x0

    .line 771
    const/4 v4, -0x1

    move v12, v4

    move v13, v4

    .line 772
    move v2, v4

    move v1, v4

    move v11, v5

    move/from16 v21, v8

    move/from16 v22, v12

    move v1, v13

    move v5, v2

    goto :goto_8

    .line 754
    .end local v9    # "addr":Ljava/lang/String;
    .end local v11    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v20    # "c":C
    .restart local v4    # "c":C
    :cond_10
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    goto :goto_7

    .line 744
    .end local v20    # "c":C
    .restart local v4    # "c":C
    :cond_11
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    new-instance v4, Ljavax/mail/internet/AddressException;

    .line 745
    nop

    .line 744
    const-string v9, "Extra route-addr"

    invoke-direct {v4, v9, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 742
    .end local v20    # "c":C
    .restart local v4    # "c":C
    :cond_12
    move/from16 v20, v4

    .line 777
    .end local v4    # "c":C
    .restart local v20    # "c":C
    :goto_7
    move v4, v1

    move v11, v5

    move/from16 v21, v8

    move/from16 v22, v12

    move v1, v13

    move v5, v2

    .end local v2    # "end_personal":I
    .end local v8    # "route_addr":Z
    .end local v12    # "end":I
    .end local v13    # "start":I
    .local v1, "start":I
    .local v4, "start_personal":I
    .local v5, "end_personal":I
    .local v11, "rfc822":Z
    .local v21, "route_addr":Z
    .local v22, "end":I
    :goto_8
    move/from16 v23, v14

    .line 778
    .local v23, "rindex":I
    const/4 v2, 0x0

    .line 780
    .local v2, "inquote":Z
    add-int/lit8 v14, v14, 0x1

    :goto_9
    if-lt v14, v3, :cond_13

    goto :goto_b

    .line 781
    :cond_13
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 782
    .end local v20    # "c":C
    .local v8, "c":C
    const/16 v9, 0x22

    if-eq v8, v9, :cond_21

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_15

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_14

    goto :goto_a

    .line 784
    :cond_14
    add-int/lit8 v14, v14, 0x1

    .line 785
    const/16 v12, 0x3e

    goto/16 :goto_10

    .line 790
    :cond_15
    if-eqz v2, :cond_16

    .line 780
    :goto_a
    const/16 v12, 0x3e

    goto/16 :goto_10

    .line 790
    :cond_16
    move/from16 v20, v8

    .line 799
    .end local v8    # "c":C
    .restart local v20    # "c":C
    :goto_b
    if-eqz v2, :cond_1b

    .line 800
    if-eqz v6, :cond_1a

    .line 805
    add-int/lit8 v8, v23, 0x1

    .end local v14    # "index":I
    .local v8, "index":I
    :goto_c
    if-lt v8, v3, :cond_17

    move v14, v8

    goto :goto_e

    .line 806
    :cond_17
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 807
    .end local v20    # "c":C
    .local v9, "c":C
    const/16 v12, 0x5c

    if-ne v9, v12, :cond_18

    .line 808
    add-int/lit8 v8, v8, 0x1

    const/16 v12, 0x3e

    goto :goto_d

    .line 809
    :cond_18
    const/16 v12, 0x3e

    if-ne v9, v12, :cond_19

    .line 810
    move v14, v8

    move/from16 v20, v9

    goto :goto_e

    .line 805
    :cond_19
    :goto_d
    const/4 v13, 0x1

    add-int/2addr v8, v13

    move/from16 v20, v9

    goto :goto_c

    .line 801
    .end local v8    # "index":I
    .end local v9    # "c":C
    .restart local v14    # "index":I
    .restart local v20    # "c":C
    :cond_1a
    new-instance v8, Ljavax/mail/internet/AddressException;

    invoke-direct {v8, v15, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 815
    :cond_1b
    :goto_e
    if-lt v14, v3, :cond_1e

    .line 816
    if-eqz v6, :cond_1d

    .line 820
    add-int/lit8 v14, v23, 0x1

    .line 821
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1c

    .line 822
    move/from16 v1, v23

    .line 823
    move v13, v1

    move v1, v4

    move v2, v5

    move v9, v11

    move/from16 v4, v20

    move/from16 v8, v21

    move/from16 v12, v22

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 821
    :cond_1c
    move v13, v1

    move v1, v4

    move v2, v5

    move v9, v11

    move/from16 v4, v20

    move/from16 v8, v21

    move/from16 v12, v22

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 817
    :cond_1d
    new-instance v8, Ljavax/mail/internet/AddressException;

    const-string v9, "Missing \'>\'"

    invoke-direct {v8, v9, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 826
    :cond_1e
    if-nez v7, :cond_20

    .line 827
    if-ltz v1, :cond_1f

    .line 829
    move v4, v1

    .line 830
    move/from16 v5, v23

    .line 832
    :cond_1f
    add-int/lit8 v1, v23, 0x1

    .line 834
    :cond_20
    const/4 v8, 0x1

    .line 835
    .end local v21    # "route_addr":Z
    .local v8, "route_addr":Z
    move v9, v14

    .line 836
    .end local v22    # "end":I
    .local v9, "end":I
    move v13, v1

    move v1, v4

    move v2, v5

    move v12, v9

    move v9, v11

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 787
    .end local v9    # "end":I
    .end local v20    # "c":C
    .local v8, "c":C
    .restart local v21    # "route_addr":Z
    .restart local v22    # "end":I
    :cond_21
    const/16 v12, 0x3e

    if-eqz v2, :cond_22

    const/4 v9, 0x0

    goto :goto_f

    :cond_22
    const/4 v9, 0x1

    :goto_f
    move v2, v9

    .line 788
    nop

    .line 780
    :goto_10
    const/4 v9, 0x1

    add-int/2addr v14, v9

    move/from16 v20, v8

    goto/16 :goto_9

    .line 900
    .end local v5    # "end_personal":I
    .end local v11    # "rfc822":Z
    .end local v21    # "route_addr":Z
    .end local v22    # "end":I
    .end local v23    # "rindex":I
    .local v1, "start_personal":I
    .local v2, "end_personal":I
    .local v4, "c":C
    .local v8, "route_addr":Z
    .local v9, "rfc822":Z
    .restart local v12    # "end":I
    .restart local v13    # "start":I
    :pswitch_1
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    const/4 v4, -0x1

    if-ne v13, v4, :cond_23

    .line 901
    const/4 v5, 0x0

    .line 902
    .end local v8    # "route_addr":Z
    .local v5, "route_addr":Z
    const/4 v8, 0x0

    .line 903
    .end local v9    # "rfc822":Z
    .local v8, "rfc822":Z
    move v9, v4

    .end local v12    # "end":I
    .local v9, "end":I
    move v11, v4

    .line 904
    .end local v13    # "start":I
    .local v11, "start":I
    move v12, v9

    move v13, v11

    move/from16 v4, v20

    const/4 v11, -0x1

    move v9, v8

    move v8, v5

    goto/16 :goto_24

    .line 906
    .end local v5    # "route_addr":Z
    .end local v11    # "start":I
    .local v8, "route_addr":Z
    .local v9, "rfc822":Z
    .restart local v12    # "end":I
    .restart local v13    # "start":I
    :cond_23
    if-eqz v7, :cond_25

    .line 907
    const/4 v4, 0x0

    .line 914
    .end local v7    # "in_group":Z
    .local v4, "in_group":Z
    if-eqz p2, :cond_24

    if-nez p1, :cond_24

    .line 915
    add-int/lit8 v5, v14, 0x1

    if-ge v5, v3, :cond_24

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x40

    if-ne v5, v7, :cond_24

    .line 916
    move v7, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 917
    :cond_24
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 918
    .local v5, "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v7, v14, 0x1

    .line 919
    .end local v12    # "end":I
    .local v7, "end":I
    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 920
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    const/4 v8, 0x0

    .line 923
    const/4 v9, 0x0

    .line 924
    const/4 v11, -0x1

    move v7, v11

    move v12, v11

    .line 925
    .end local v13    # "start":I
    .local v12, "start":I
    move v2, v11

    move v1, v11

    .line 926
    move v13, v12

    const/4 v11, -0x1

    move v12, v7

    move v7, v4

    move/from16 v4, v20

    goto/16 :goto_24

    .line 928
    .end local v4    # "in_group":Z
    .end local v5    # "ma":Ljavax/mail/internet/InternetAddress;
    .local v7, "in_group":Z
    .local v12, "end":I
    .restart local v13    # "start":I
    :cond_25
    if-eqz v6, :cond_26

    goto/16 :goto_1b

    .line 929
    :cond_26
    new-instance v4, Ljavax/mail/internet/AddressException;

    .line 930
    nop

    .line 929
    const-string v5, "Illegal semicolon, not in group"

    invoke-direct {v4, v5, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 998
    .end local v20    # "c":C
    .local v4, "c":C
    :pswitch_2
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    const/4 v4, 0x1

    .line 999
    .end local v9    # "rfc822":Z
    .local v4, "rfc822":Z
    if-eqz v7, :cond_28

    .line 1000
    if-eqz v6, :cond_27

    goto :goto_11

    .line 1001
    :cond_27
    new-instance v5, Ljavax/mail/internet/AddressException;

    const-string v9, "Nested group"

    invoke-direct {v5, v9, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v5

    .line 1002
    :cond_28
    :goto_11
    const/4 v5, -0x1

    if-ne v13, v5, :cond_29

    .line 1003
    move v13, v14

    .line 1004
    :cond_29
    if-eqz p2, :cond_31

    if-nez p1, :cond_31

    .line 1010
    add-int/lit8 v5, v14, 0x1

    if-ge v5, v3, :cond_2e

    .line 1011
    const-string v5, ")>[]:@\\,."

    .line 1012
    .local v5, "addressSpecials":Ljava/lang/String;
    add-int/lit8 v9, v14, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1013
    .local v9, "nc":C
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_2e

    .line 1014
    const/16 v11, 0x40

    if-eq v9, v11, :cond_2a

    .line 1015
    goto :goto_14

    .line 1024
    :cond_2a
    add-int/lit8 v11, v14, 0x2

    .local v11, "i":I
    :goto_12
    const/16 v15, 0x3b

    if-lt v11, v3, :cond_2b

    goto :goto_13

    .line 1025
    :cond_2b
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1026
    if-ne v9, v15, :cond_2c

    .line 1027
    goto :goto_13

    .line 1028
    :cond_2c
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_2d

    .line 1029
    nop

    .line 1031
    .end local v11    # "i":I
    :goto_13
    if-ne v9, v15, :cond_2e

    .line 1032
    nop

    .line 688
    .end local v5    # "addressSpecials":Ljava/lang/String;
    .end local v9    # "nc":C
    :goto_14
    move v9, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 1024
    .restart local v5    # "addressSpecials":Ljava/lang/String;
    .restart local v9    # "nc":C
    .restart local v11    # "i":I
    :cond_2d
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1038
    .end local v5    # "addressSpecials":Ljava/lang/String;
    .end local v9    # "nc":C
    .end local v11    # "i":I
    :cond_2e
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1039
    .local v5, "gname":Ljava/lang/String;
    sget-boolean v9, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    if-eqz v9, :cond_30

    .line 1040
    const-string v9, "mailto"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1041
    const-string v9, "From"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1042
    const-string v9, "To"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1043
    const-string v9, "Cc"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1044
    const-string v9, "Subject"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1045
    const-string v9, "Re"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 1046
    :cond_2f
    const/4 v9, -0x1

    move v13, v9

    const/4 v11, -0x1

    move v9, v4

    move/from16 v4, v20

    .end local v13    # "start":I
    .local v9, "start":I
    goto/16 :goto_24

    .line 1048
    .end local v9    # "start":I
    .restart local v13    # "start":I
    :cond_30
    const/4 v5, 0x1

    .line 1049
    .end local v7    # "in_group":Z
    .local v5, "in_group":Z
    move v9, v4

    move v7, v5

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 1050
    .end local v5    # "in_group":Z
    .restart local v7    # "in_group":Z
    :cond_31
    const/4 v5, 0x1

    .line 1051
    .end local v7    # "in_group":Z
    .restart local v5    # "in_group":Z
    move v9, v4

    move v7, v5

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 732
    .end local v5    # "in_group":Z
    .end local v20    # "c":C
    .local v4, "c":C
    .restart local v7    # "in_group":Z
    .local v9, "rfc822":Z
    :cond_32
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    if-eqz v6, :cond_34

    .line 736
    const/4 v4, -0x1

    if-ne v13, v4, :cond_33

    .line 737
    move v4, v14

    .line 738
    .end local v13    # "start":I
    .local v4, "start":I
    move v13, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 736
    .end local v4    # "start":I
    .restart local v13    # "start":I
    :cond_33
    move/from16 v18, v1

    const/4 v11, -0x1

    goto/16 :goto_23

    .line 733
    :cond_34
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing \'(\'"

    invoke-direct {v4, v5, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 695
    .end local v20    # "c":C
    .local v4, "c":C
    :cond_35
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    const/4 v4, 0x1

    .line 696
    .end local v9    # "rfc822":Z
    .local v4, "rfc822":Z
    if-ltz v13, :cond_36

    const/4 v9, -0x1

    if-ne v12, v9, :cond_36

    .line 697
    move v12, v14

    .line 698
    :cond_36
    move v9, v14

    .line 699
    .local v9, "pindex":I
    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    .local v15, "nesting":I
    :goto_15
    if-ge v14, v3, :cond_3b

    if-gtz v15, :cond_37

    goto :goto_17

    .line 701
    :cond_37
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 702
    .end local v20    # "c":C
    .local v11, "c":C
    if-eq v11, v5, :cond_3a

    const/16 v5, 0x29

    if-eq v11, v5, :cond_39

    const/16 v5, 0x5c

    if-eq v11, v5, :cond_38

    goto :goto_16

    .line 704
    :cond_38
    add-int/lit8 v14, v14, 0x1

    .line 705
    goto :goto_16

    .line 710
    :cond_39
    add-int/lit8 v15, v15, -0x1

    .line 711
    goto :goto_16

    .line 707
    :cond_3a
    add-int/lit8 v15, v15, 0x1

    .line 708
    nop

    .line 700
    :goto_16
    const/4 v5, 0x1

    add-int/2addr v14, v5

    move/from16 v20, v11

    const/16 v5, 0x28

    const/16 v11, 0x29

    goto :goto_15

    .line 716
    .end local v11    # "c":C
    .restart local v20    # "c":C
    :cond_3b
    :goto_17
    if-lez v15, :cond_3d

    .line 717
    if-eqz v6, :cond_3c

    .line 721
    add-int/lit8 v14, v9, 0x1

    .line 722
    move v9, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 718
    :cond_3c
    new-instance v5, Ljavax/mail/internet/AddressException;

    const-string v11, "Missing \')\'"

    invoke-direct {v5, v11, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v5

    .line 724
    :cond_3d
    add-int/lit8 v14, v14, -0x1

    .line 725
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3e

    .line 726
    add-int/lit8 v1, v9, 0x1

    .line 727
    :cond_3e
    if-ne v2, v5, :cond_3f

    .line 728
    move v2, v14

    .line 729
    move v9, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 727
    :cond_3f
    move v9, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 875
    .end local v15    # "nesting":I
    .end local v20    # "c":C
    .local v4, "c":C
    .local v9, "rfc822":Z
    :cond_40
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    const/4 v4, 0x1

    .line 876
    .end local v9    # "rfc822":Z
    .local v4, "rfc822":Z
    move v5, v14

    .line 878
    .local v5, "lindex":I
    add-int/lit8 v14, v14, 0x1

    :goto_18
    if-lt v14, v3, :cond_41

    goto :goto_19

    .line 879
    :cond_41
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 880
    .end local v20    # "c":C
    .local v9, "c":C
    const/16 v11, 0x5c

    if-eq v9, v11, :cond_45

    const/16 v11, 0x5d

    if-eq v9, v11, :cond_42

    goto :goto_1a

    .line 885
    :cond_42
    move/from16 v20, v9

    .line 890
    .end local v9    # "c":C
    .restart local v20    # "c":C
    :goto_19
    if-lt v14, v3, :cond_44

    .line 891
    if-eqz v6, :cond_43

    .line 895
    add-int/lit8 v14, v5, 0x1

    .line 897
    move v9, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 892
    :cond_43
    new-instance v9, Ljavax/mail/internet/AddressException;

    const-string v11, "Missing \']\'"

    invoke-direct {v9, v11, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9

    .line 890
    :cond_44
    move v9, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 882
    .end local v20    # "c":C
    .restart local v9    # "c":C
    :cond_45
    add-int/lit8 v14, v14, 0x1

    .line 883
    nop

    .line 878
    :goto_1a
    const/4 v11, 0x1

    add-int/2addr v14, v11

    move/from16 v20, v9

    goto :goto_18

    .line 839
    .end local v5    # "lindex":I
    .local v4, "c":C
    .local v9, "rfc822":Z
    :cond_46
    move/from16 v20, v4

    .end local v4    # "c":C
    .restart local v20    # "c":C
    if-eqz v6, :cond_48

    .line 843
    const/4 v4, -0x1

    if-ne v13, v4, :cond_47

    .line 844
    move v4, v14

    .line 845
    .end local v13    # "start":I
    .local v4, "start":I
    move v13, v4

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 843
    .end local v4    # "start":I
    .restart local v13    # "start":I
    :cond_47
    move/from16 v18, v1

    const/4 v11, -0x1

    goto/16 :goto_23

    .line 840
    :cond_48
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing \'<\'"

    invoke-direct {v4, v5, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 691
    .end local v20    # "c":C
    .local v4, "c":C
    :cond_49
    move/from16 v20, v4

    .line 936
    .end local v4    # "c":C
    .restart local v20    # "c":C
    :goto_1b
    const/4 v4, -0x1

    if-ne v13, v4, :cond_4a

    .line 937
    const/4 v5, 0x0

    .line 938
    .end local v8    # "route_addr":Z
    .local v5, "route_addr":Z
    const/4 v8, 0x0

    .line 939
    .end local v9    # "rfc822":Z
    .local v8, "rfc822":Z
    move v9, v4

    .end local v12    # "end":I
    .local v9, "end":I
    move v11, v4

    .line 940
    .end local v13    # "start":I
    .local v11, "start":I
    move v12, v9

    move v13, v11

    move/from16 v4, v20

    const/4 v11, -0x1

    move v9, v8

    move v8, v5

    goto/16 :goto_24

    .line 942
    .end local v5    # "route_addr":Z
    .end local v11    # "start":I
    .local v8, "route_addr":Z
    .local v9, "rfc822":Z
    .restart local v12    # "end":I
    .restart local v13    # "start":I
    :cond_4a
    if-eqz v7, :cond_4b

    .line 943
    const/4 v5, 0x0

    .line 944
    .end local v8    # "route_addr":Z
    .restart local v5    # "route_addr":Z
    move v8, v5

    move/from16 v4, v20

    const/4 v11, -0x1

    goto/16 :goto_24

    .line 947
    .end local v5    # "route_addr":Z
    .restart local v8    # "route_addr":Z
    :cond_4b
    if-ne v12, v4, :cond_4c

    .line 948
    move v12, v14

    .line 950
    :cond_4c
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "addr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 952
    .local v5, "pers":Ljava/lang/String;
    if-eqz v9, :cond_4d

    if-ltz v1, :cond_4d

    .line 954
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 953
    invoke-static {v11}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 955
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4d

    .line 956
    const/4 v5, 0x0

    .line 964
    :cond_4d
    if-eqz p2, :cond_4e

    if-nez p1, :cond_4e

    if-eqz v5, :cond_4e

    .line 965
    const/16 v11, 0x40

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_4e

    .line 966
    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_4e

    const/16 v11, 0x21

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_4e

    .line 967
    move-object v11, v4

    .line 968
    .local v11, "tmp":Ljava/lang/String;
    move-object v4, v5

    .line 969
    move-object v5, v11

    .line 971
    .end local v11    # "tmp":Ljava/lang/String;
    :cond_4e
    if-nez v9, :cond_51

    if-nez p1, :cond_51

    if-eqz p2, :cond_4f

    move/from16 v18, v1

    goto :goto_1d

    .line 981
    :cond_4f
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 982
    .local v11, "st":Ljava/util/StringTokenizer;
    nop

    :goto_1c
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-nez v15, :cond_50

    move/from16 v18, v1

    const/4 v1, 0x0

    goto :goto_1f

    .line 983
    :cond_50
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 984
    .local v15, "a":Ljava/lang/String;
    move/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "start_personal":I
    .local v18, "start_personal":I
    invoke-static {v15, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 985
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 986
    .local v1, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v1, v15}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 987
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v18

    goto :goto_1c

    .line 971
    .end local v11    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "a":Ljava/lang/String;
    .end local v18    # "start_personal":I
    .local v1, "start_personal":I
    :cond_51
    move/from16 v18, v1

    .line 972
    .end local v1    # "start_personal":I
    .restart local v18    # "start_personal":I
    :goto_1d
    if-nez v6, :cond_52

    .line 973
    const/4 v1, 0x0

    invoke-static {v4, v8, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    goto :goto_1e

    .line 972
    :cond_52
    const/4 v1, 0x0

    .line 974
    :goto_1e
    new-instance v11, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v11}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 975
    .local v11, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v11, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 976
    if-eqz v5, :cond_53

    .line 977
    iput-object v5, v11, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 978
    :cond_53
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    nop

    .line 991
    .end local v11    # "ma":Ljavax/mail/internet/InternetAddress;
    :goto_1f
    const/4 v8, 0x0

    .line 992
    const/4 v9, 0x0

    .line 993
    const/4 v11, -0x1

    move v12, v11

    move v13, v11

    .line 994
    move v2, v11

    move v15, v11

    .line 995
    .end local v18    # "start_personal":I
    .local v15, "start_personal":I
    move v1, v15

    move/from16 v4, v20

    goto :goto_24

    .line 848
    .end local v5    # "pers":Ljava/lang/String;
    .end local v15    # "start_personal":I
    .end local v20    # "c":C
    .restart local v1    # "start_personal":I
    .local v4, "c":C
    :cond_54
    move/from16 v18, v1

    move/from16 v20, v4

    const/4 v1, 0x0

    const/4 v11, -0x1

    .end local v1    # "start_personal":I
    .end local v4    # "c":C
    .restart local v18    # "start_personal":I
    .restart local v20    # "c":C
    move v4, v14

    .line 849
    .local v4, "qindex":I
    const/4 v5, 0x1

    .line 850
    .end local v9    # "rfc822":Z
    .local v5, "rfc822":Z
    if-ne v13, v11, :cond_55

    .line 851
    move v13, v14

    .line 853
    :cond_55
    add-int/lit8 v14, v14, 0x1

    :goto_20
    if-lt v14, v3, :cond_56

    goto :goto_22

    .line 854
    :cond_56
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 855
    .end local v20    # "c":C
    .local v9, "c":C
    const/16 v1, 0x22

    if-eq v9, v1, :cond_58

    const/16 v1, 0x5c

    if-eq v9, v1, :cond_57

    goto :goto_21

    .line 857
    :cond_57
    add-int/lit8 v14, v14, 0x1

    .line 858
    nop

    .line 853
    :goto_21
    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v9

    const/4 v1, 0x0

    goto :goto_20

    .line 860
    :cond_58
    move/from16 v20, v9

    .line 865
    .end local v9    # "c":C
    .restart local v20    # "c":C
    :goto_22
    if-lt v14, v3, :cond_5a

    .line 866
    if-eqz v6, :cond_59

    .line 870
    add-int/lit8 v14, v4, 0x1

    .line 872
    move v9, v5

    move/from16 v1, v18

    move/from16 v4, v20

    goto :goto_24

    .line 867
    :cond_59
    new-instance v1, Ljavax/mail/internet/AddressException;

    invoke-direct {v1, v15, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 865
    :cond_5a
    move v9, v5

    move/from16 v1, v18

    move/from16 v4, v20

    goto :goto_24

    .line 691
    .end local v5    # "rfc822":Z
    .end local v18    # "start_personal":I
    .end local v20    # "c":C
    .restart local v1    # "start_personal":I
    .local v4, "c":C
    .local v9, "rfc822":Z
    :cond_5b
    move/from16 v18, v1

    move/from16 v20, v4

    .line 1058
    .end local v1    # "start_personal":I
    .end local v4    # "c":C
    .restart local v18    # "start_personal":I
    .restart local v20    # "c":C
    nop

    .line 688
    :goto_23
    move/from16 v1, v18

    move/from16 v4, v20

    .end local v18    # "start_personal":I
    .end local v20    # "c":C
    .restart local v1    # "start_personal":I
    .restart local v4    # "c":C
    :goto_24
    const/4 v5, 0x1

    add-int/2addr v14, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 2
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 663
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phrase"    # Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 343
    .local v0, "len":I
    const/4 v1, 0x0

    .line 345
    .local v1, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x22

    if-lt v2, v0, :cond_1

    .line 366
    .end local v2    # "i":I
    if-eqz v1, :cond_0

    .line 367
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x2

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 368
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 371
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 346
    .local v2, "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 347
    .local v4, "c":C
    const/16 v5, 0x5c

    if-eq v4, v3, :cond_6

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 360
    :cond_2
    const/16 v3, 0x20

    if-ge v4, v3, :cond_3

    const/16 v3, 0xd

    if-eq v4, v3, :cond_3

    const/16 v3, 0xa

    if-eq v4, v3, :cond_3

    const/16 v3, 0x9

    if-ne v4, v3, :cond_4

    .line 361
    :cond_3
    const/16 v3, 0x7f

    if-ge v4, v3, :cond_4

    sget-object v3, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 363
    :cond_4
    const/4 v1, 0x1

    .line 345
    .end local v4    # "c":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .restart local v4    # "c":C
    :cond_6
    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v0, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 350
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v0, :cond_7

    .line 358
    .end local v7    # "j":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 352
    .restart local v7    # "j":I
    :cond_7
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 353
    .local v8, "cc":C
    if-eq v8, v3, :cond_8

    if-ne v8, v5, :cond_9

    .line 355
    :cond_8
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    :cond_9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    .end local v8    # "cc":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .line 431
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 6
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .line 455
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 476
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 461
    .restart local v1    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 462
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    add-int/lit8 p1, p1, 0x2

    .line 466
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v3

    .line 468
    .local v3, "len":I
    add-int v4, p1, v3

    const/16 v5, 0x4c

    if-le v4, v5, :cond_3

    .line 469
    const-string v4, "\r\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const/16 p1, 0x8

    .line 472
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 460
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 375
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 378
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 379
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 380
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 386
    .end local v3    # "i":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 381
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 382
    .local v4, "c":C
    if-ne v4, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_1

    .line 383
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 384
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    .end local v4    # "c":C
    add-int/2addr v3, v1

    goto :goto_0

    .line 389
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 187
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .line 396
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 397
    return v1

    .line 399
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 401
    return v3

    .line 402
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    return v3

    .line 405
    :cond_2
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1326
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1328
    return-object v1

    .line 1330
    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1331
    return-object v1

    .line 1332
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1333
    .local v2, "ix":I
    if-gez v2, :cond_2

    .line 1334
    return-object v1

    .line 1336
    :cond_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, "list":Ljava/lang/String;
    invoke-static {v1, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    return-object v3
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 2

    .line 265
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 270
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v1

    .line 280
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 412
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    return v0

    .line 415
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 1309
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1310
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1309
    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 242
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 247
    :goto_0
    return-void
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 222
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 227
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 291
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 292
    .local v0, "a":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 294
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 297
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const-string v2, ">"

    if-eqz v1, :cond_2

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " <"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 299
    :cond_2
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 302
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 300
    :cond_4
    :goto_1
    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 4

    .line 313
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "p":Ljava/lang/String;
    const-string v1, ">"

    if-eqz v0, :cond_0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 317
    :cond_2
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v1
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    goto :goto_0

    .line 1137
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1138
    :goto_0
    return-void
.end method
