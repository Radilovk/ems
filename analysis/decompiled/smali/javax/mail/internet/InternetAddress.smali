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

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "mail.mime.address.ignorebogusgroupname"

    const/4 v1, 0x1

    .line 85
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    .line 339
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

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

    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 111
    invoke-static {p1, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 113
    .local v0, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 114
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v1, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 123
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 124
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 125
    return-void
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

    .prologue
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

    .prologue
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

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 140
    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    goto :goto_0
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

    .prologue
    .line 533
    const/4 v2, 0x0

    .local v2, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v0, 0x0

    .line 534
    .local v0, "address":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 535
    const-string/jumbo v3, "user.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

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

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_1
    if-nez v0, :cond_8

    .line 557
    const/4 v3, 0x0

    .line 559
    :goto_1
    return-object v3

    .line 538
    :cond_2
    const-string v3, "mail.from"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    if-nez v0, :cond_0

    .line 540
    const-string v3, "mail.user"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 542
    :cond_3
    const-string/jumbo v3, "user.name"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 544
    :cond_5
    const-string/jumbo v3, "user.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    :cond_6
    const-string v3, "mail.host"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 547
    :cond_7
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 559
    :cond_8
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v3, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 13
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x7f

    const/16 v11, 0x5c

    const/16 v10, 0x20

    const/16 v9, 0x40

    const/16 v8, 0x2e

    .line 1153
    const/4 v5, 0x0

    .line 1155
    .local v5, "start":I
    if-nez p0, :cond_0

    .line 1156
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Address is null"

    invoke-direct {v6, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1157
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1158
    .local v4, "len":I
    if-nez v4, :cond_1

    .line 1159
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Empty address"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1165
    :cond_1
    if-eqz p1, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1170
    const/4 v5, 0x0

    :goto_0
    const-string v6, ",:"

    invoke-static {p0, v6, v5}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .local v1, "i":I
    if-gez v1, :cond_4

    .line 1190
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const v0, 0xffff

    .line 1191
    .local v0, "c":C
    const v3, 0xffff

    .line 1192
    .local v3, "lastc":C
    const/4 v2, 0x0

    .line 1193
    .local v2, "inquote":Z
    move v1, v5

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v4, :cond_7

    .line 1229
    :cond_3
    if-eqz v2, :cond_11

    .line 1230
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1172
    .end local v0    # "c":C
    .end local v2    # "inquote":Z
    .end local v3    # "lastc":C
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_5

    .line 1173
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Illegal route-addr"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1174
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_6

    .line 1176
    add-int/lit8 v5, v1, 0x1

    .line 1177
    goto :goto_1

    .line 1171
    :cond_6
    add-int/lit8 v5, v1, 0x1

    goto :goto_0

    .line 1194
    .restart local v0    # "c":C
    .restart local v2    # "inquote":Z
    .restart local v3    # "lastc":C
    :cond_7
    move v3, v0

    .line 1195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1198
    if-eq v0, v11, :cond_8

    if-ne v3, v11, :cond_9

    .line 1193
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1200
    :cond_9
    const/16 v6, 0x22

    if-ne v0, v6, :cond_d

    .line 1201
    if-eqz v2, :cond_b

    .line 1203
    if-eqz p2, :cond_a

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v4, :cond_a

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_a

    .line 1204
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1205
    const-string v7, "Quote not at end of local address"

    .line 1204
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1206
    :cond_a
    const/4 v2, 0x0

    .line 1207
    goto :goto_3

    .line 1208
    :cond_b
    if-eqz p2, :cond_c

    if-eqz v1, :cond_c

    .line 1209
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1210
    const-string v7, "Quote not at start of local address"

    .line 1209
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1211
    :cond_c
    const/4 v2, 0x1

    .line 1213
    goto :goto_3

    .line 1215
    :cond_d
    if-nez v2, :cond_8

    .line 1217
    if-ne v0, v9, :cond_e

    .line 1218
    if-nez v1, :cond_3

    .line 1219
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing local name"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1222
    :cond_e
    if-le v0, v10, :cond_f

    if-lt v0, v12, :cond_10

    .line 1223
    :cond_f
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1224
    const-string v7, "Local address contains control or whitespace"

    .line 1223
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1225
    :cond_10
    const-string v6, "()<>,;:\\\"[]@"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_8

    .line 1226
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1227
    const-string v7, "Local address contains illegal character"

    .line 1226
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1244
    :cond_11
    if-eq v0, v9, :cond_12

    .line 1245
    if-eqz p2, :cond_16

    .line 1246
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing final \'@domain\'"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1252
    :cond_12
    add-int/lit8 v5, v1, 0x1

    .line 1253
    if-lt v5, v4, :cond_13

    .line 1254
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing domain"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1256
    :cond_13
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_14

    .line 1257
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Domain starts with dot"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1258
    :cond_14
    move v1, v5

    :goto_4
    if-lt v1, v4, :cond_15

    .line 1286
    if-ne v3, v8, :cond_16

    .line 1287
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v7, "Domain ends with dot"

    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1259
    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1260
    const/16 v6, 0x5b

    if-ne v0, v6, :cond_17

    .line 1288
    :cond_16
    return-void

    .line 1262
    :cond_17
    if-le v0, v10, :cond_18

    if-lt v0, v12, :cond_19

    .line 1263
    :cond_18
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1264
    const-string v7, "Domain contains control or whitespace"

    .line 1263
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1278
    :cond_19
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1a

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_1a

    if-eq v0, v8, :cond_1a

    .line 1279
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1280
    const-string v7, "Domain contains illegal character"

    .line 1279
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1281
    :cond_1a
    if-ne v0, v8, :cond_1b

    if-ne v3, v8, :cond_1b

    .line 1282
    new-instance v6, Ljavax/mail/internet/AddressException;

    .line 1283
    const-string v7, "Domain contains dot-dot"

    .line 1282
    invoke-direct {v6, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1284
    :cond_1b
    move v3, v0

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;

    .prologue
    .line 518
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    .line 519
    :catch_0
    move-exception v0

    .line 522
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    goto :goto_1

    .line 521
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static getLocalHostName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
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

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .prologue
    .line 1348
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 1353
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1354
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    move v1, v3

    .line 1360
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    :goto_1
    return v1

    .line 1355
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gez v4, :cond_0

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1359
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1360
    goto :goto_1
.end method

.method private static isInetAddressLiteral(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 588
    const/4 v3, 0x0

    .local v3, "sawHex":Z
    const/4 v2, 0x0

    .line 589
    .local v2, "sawColon":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 602
    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    :cond_0
    :goto_1
    return v4

    .line 590
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 591
    .local v0, "c":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 589
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :cond_3
    const/16 v5, 0x2e

    if-eq v0, v5, :cond_2

    .line 595
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_6

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_6

    .line 596
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 597
    :cond_6
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_0

    .line 598
    const/4 v2, 0x1

    goto :goto_2

    .line 602
    .end local v0    # "c":C
    :cond_7
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isSimple()Z
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 484
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 487
    .end local v0    # "pos":I
    :goto_0
    return v0

    .restart local v0    # "pos":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .prologue
    .line 497
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 498
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 500
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 33
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 678
    const/16 v28, -0x1

    .local v28, "start_personal":I
    const/4 v8, -0x1

    .line 679
    .local v8, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    .line 680
    .local v15, "length":I
    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    const/4 v11, 0x1

    .line 681
    .local v11, "ignoreErrors":Z
    :goto_0
    const/4 v12, 0x0

    .line 682
    .local v12, "in_group":Z
    const/16 v25, 0x0

    .line 683
    .local v25, "route_addr":Z
    const/16 v23, 0x0

    .line 685
    .local v23, "rfc822":Z
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v30, "v":Ljava/util/List;
    const/4 v7, -0x1

    .local v7, "end":I
    move/from16 v27, v7

    .local v27, "start":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    if-lt v13, v15, :cond_8

    .line 1067
    if-ltz v27, :cond_6

    .line 1073
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v7, v0, :cond_0

    .line 1074
    move v7, v15

    .line 1076
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, "addr":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1078
    .local v20, "pers":Ljava/lang/String;
    if-eqz v23, :cond_1

    if-ltz v28, :cond_1

    .line 1080
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 1079
    invoke-static/range {v31 .. v31}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1081
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-nez v31, :cond_1

    .line 1082
    const/16 v20, 0x0

    .line 1090
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 1091
    if-eqz v20, :cond_2

    const/16 v31, 0x40

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-ltz v31, :cond_2

    .line 1092
    const/16 v31, 0x40

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-gez v31, :cond_2

    const/16 v31, 0x21

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-gez v31, :cond_2

    .line 1093
    move-object/from16 v29, v4

    .line 1094
    .local v29, "tmp":Ljava/lang/String;
    move-object/from16 v4, v20

    .line 1095
    move-object/from16 v20, v29

    .line 1097
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_2
    if-nez v23, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_3e

    .line 1098
    :cond_3
    if-nez v11, :cond_4

    .line 1099
    const/16 v31, 0x0

    move/from16 v0, v25

    move/from16 v1, v31

    invoke-static {v4, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1100
    :cond_4
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1101
    .local v17, "ma":Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1102
    if-eqz v20, :cond_5

    .line 1103
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 1104
    :cond_5
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    .end local v4    # "addr":Ljava/lang/String;
    .end local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v20    # "pers":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v3, v0, [Ljavax/mail/internet/InternetAddress;

    .line 1119
    .local v3, "a":[Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1120
    return-object v3

    .line 680
    .end local v3    # "a":[Ljavax/mail/internet/InternetAddress;
    .end local v7    # "end":I
    .end local v11    # "ignoreErrors":Z
    .end local v12    # "in_group":Z
    .end local v13    # "index":I
    .end local v23    # "rfc822":Z
    .end local v25    # "route_addr":Z
    .end local v27    # "start":I
    .end local v30    # "v":Ljava/util/List;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 689
    .restart local v7    # "end":I
    .restart local v11    # "ignoreErrors":Z
    .restart local v12    # "in_group":Z
    .restart local v13    # "index":I
    .restart local v23    # "rfc822":Z
    .restart local v25    # "route_addr":Z
    .restart local v27    # "start":I
    .restart local v30    # "v":Ljava/util/List;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 691
    .local v6, "c":C
    sparse-switch v6, :sswitch_data_0

    .line 1061
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1062
    move/from16 v27, v13

    .line 688
    :cond_9
    :goto_2
    :sswitch_0
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 695
    :sswitch_1
    const/16 v23, 0x1

    .line 696
    if-ltz v27, :cond_a

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v7, v0, :cond_a

    .line 697
    move v7, v13

    .line 698
    :cond_a
    move/from16 v21, v13

    .line 699
    .local v21, "pindex":I
    add-int/lit8 v13, v13, 0x1

    const/16 v19, 0x1

    .local v19, "nesting":I
    :goto_3
    if-ge v13, v15, :cond_b

    if-gtz v19, :cond_c

    .line 716
    :cond_b
    if-lez v19, :cond_e

    .line 717
    if-nez v11, :cond_d

    .line 718
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \')\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 701
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 702
    sparse-switch v6, :sswitch_data_1

    .line 700
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 704
    :sswitch_2
    add-int/lit8 v13, v13, 0x1

    .line 705
    goto :goto_4

    .line 707
    :sswitch_3
    add-int/lit8 v19, v19, 0x1

    .line 708
    goto :goto_4

    .line 710
    :sswitch_4
    add-int/lit8 v19, v19, -0x1

    .line 711
    goto :goto_4

    .line 721
    :cond_d
    add-int/lit8 v13, v21, 0x1

    .line 722
    goto :goto_2

    .line 724
    :cond_e
    add-int/lit8 v13, v13, -0x1

    .line 725
    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 726
    add-int/lit8 v28, v21, 0x1

    .line 727
    :cond_f
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v8, v0, :cond_9

    .line 728
    move v8, v13

    .line 729
    goto :goto_2

    .line 732
    .end local v19    # "nesting":I
    .end local v21    # "pindex":I
    :sswitch_5
    if-nez v11, :cond_10

    .line 733
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \'(\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 736
    :cond_10
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 737
    move/from16 v27, v13

    .line 738
    goto :goto_2

    .line 741
    :sswitch_6
    const/16 v23, 0x1

    .line 742
    if-eqz v25, :cond_15

    .line 743
    if-nez v11, :cond_11

    .line 744
    new-instance v31, Ljavax/mail/internet/AddressException;

    .line 745
    const-string v32, "Extra route-addr"

    .line 744
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 748
    :cond_11
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 749
    const/16 v25, 0x0

    .line 750
    const/16 v23, 0x0

    .line 751
    const/4 v7, -0x1

    move/from16 v27, v7

    .line 752
    goto/16 :goto_2

    .line 754
    :cond_12
    if-nez v12, :cond_15

    .line 756
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v7, v0, :cond_13

    .line 757
    move v7, v13

    .line 758
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 760
    .restart local v4    # "addr":Ljava/lang/String;
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 761
    .restart local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 762
    if-ltz v28, :cond_14

    .line 764
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 765
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 763
    invoke-static/range {v31 .. v31}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 767
    :cond_14
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const/16 v25, 0x0

    .line 770
    const/16 v23, 0x0

    .line 771
    const/4 v7, -0x1

    move/from16 v27, v7

    .line 772
    const/4 v8, -0x1

    move/from16 v28, v8

    .line 777
    .end local v4    # "addr":Ljava/lang/String;
    .end local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_15
    move/from16 v24, v13

    .line 778
    .local v24, "rindex":I
    const/4 v14, 0x0

    .line 780
    .local v14, "inquote":Z
    add-int/lit8 v13, v13, 0x1

    :goto_5
    if-lt v13, v15, :cond_17

    .line 799
    :cond_16
    if-eqz v14, :cond_1a

    .line 800
    if-nez v11, :cond_19

    .line 801
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \'\"\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 781
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 782
    sparse-switch v6, :sswitch_data_2

    .line 780
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 784
    :sswitch_7
    add-int/lit8 v13, v13, 0x1

    .line 785
    goto :goto_6

    .line 787
    :sswitch_8
    if-eqz v14, :cond_18

    const/4 v14, 0x0

    .line 788
    :goto_7
    goto :goto_6

    .line 787
    :cond_18
    const/4 v14, 0x1

    goto :goto_7

    .line 790
    :sswitch_9
    if-eqz v14, :cond_16

    goto :goto_6

    .line 805
    :cond_19
    add-int/lit8 v13, v24, 0x1

    :goto_8
    if-lt v13, v15, :cond_1b

    .line 815
    :cond_1a
    :goto_9
    if-lt v13, v15, :cond_1f

    .line 816
    if-nez v11, :cond_1e

    .line 817
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \'>\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 806
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 807
    const/16 v31, 0x5c

    move/from16 v0, v31

    if-ne v6, v0, :cond_1d

    .line 808
    add-int/lit8 v13, v13, 0x1

    .line 805
    :cond_1c
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 809
    :cond_1d
    const/16 v31, 0x3e

    move/from16 v0, v31

    if-ne v6, v0, :cond_1c

    goto :goto_9

    .line 820
    :cond_1e
    add-int/lit8 v13, v24, 0x1

    .line 821
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 822
    move/from16 v27, v24

    .line 823
    goto/16 :goto_2

    .line 826
    :cond_1f
    if-nez v12, :cond_21

    .line 827
    if-ltz v27, :cond_20

    .line 829
    move/from16 v28, v27

    .line 830
    move/from16 v8, v24

    .line 832
    :cond_20
    add-int/lit8 v27, v24, 0x1

    .line 834
    :cond_21
    const/16 v25, 0x1

    .line 835
    move v7, v13

    .line 836
    goto/16 :goto_2

    .line 839
    .end local v14    # "inquote":Z
    .end local v24    # "rindex":I
    :sswitch_a
    if-nez v11, :cond_22

    .line 840
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \'<\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 843
    :cond_22
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 844
    move/from16 v27, v13

    .line 845
    goto/16 :goto_2

    .line 848
    :sswitch_b
    move/from16 v22, v13

    .line 849
    .local v22, "qindex":I
    const/16 v23, 0x1

    .line 850
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_23

    .line 851
    move/from16 v27, v13

    .line 853
    :cond_23
    add-int/lit8 v13, v13, 0x1

    :goto_a
    if-lt v13, v15, :cond_24

    .line 865
    :sswitch_c
    if-lt v13, v15, :cond_9

    .line 866
    if-nez v11, :cond_25

    .line 867
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \'\"\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 854
    :cond_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 855
    sparse-switch v6, :sswitch_data_3

    .line 853
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 857
    :sswitch_d
    add-int/lit8 v13, v13, 0x1

    .line 858
    goto :goto_b

    .line 870
    :cond_25
    add-int/lit8 v13, v22, 0x1

    .line 872
    goto/16 :goto_2

    .line 875
    .end local v22    # "qindex":I
    :sswitch_e
    const/16 v23, 0x1

    .line 876
    move/from16 v16, v13

    .line 878
    .local v16, "lindex":I
    add-int/lit8 v13, v13, 0x1

    :goto_c
    if-lt v13, v15, :cond_26

    .line 890
    :pswitch_0
    if-lt v13, v15, :cond_9

    .line 891
    if-nez v11, :cond_27

    .line 892
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Missing \']\'"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 879
    :cond_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 880
    packed-switch v6, :pswitch_data_0

    .line 878
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 882
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 883
    goto :goto_d

    .line 895
    :cond_27
    add-int/lit8 v13, v16, 0x1

    .line 897
    goto/16 :goto_2

    .line 900
    .end local v16    # "lindex":I
    :sswitch_f
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_28

    .line 901
    const/16 v25, 0x0

    .line 902
    const/16 v23, 0x0

    .line 903
    const/4 v7, -0x1

    move/from16 v27, v7

    .line 904
    goto/16 :goto_2

    .line 906
    :cond_28
    if-eqz v12, :cond_2a

    .line 907
    const/4 v12, 0x0

    .line 914
    if-eqz p2, :cond_29

    if-nez p1, :cond_29

    .line 915
    add-int/lit8 v31, v13, 0x1

    move/from16 v0, v31

    if-ge v0, v15, :cond_29

    add-int/lit8 v31, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    const/16 v32, 0x40

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    .line 917
    :cond_29
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 918
    .restart local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v7, v13, 0x1

    .line 919
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 920
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    const/16 v25, 0x0

    .line 923
    const/16 v23, 0x0

    .line 924
    const/4 v7, -0x1

    move/from16 v27, v7

    .line 925
    const/4 v8, -0x1

    move/from16 v28, v8

    .line 926
    goto/16 :goto_2

    .line 928
    .end local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_2a
    if-nez v11, :cond_2b

    .line 929
    new-instance v31, Ljavax/mail/internet/AddressException;

    .line 930
    const-string v32, "Illegal semicolon, not in group"

    .line 929
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 936
    :cond_2b
    :sswitch_10
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_2c

    .line 937
    const/16 v25, 0x0

    .line 938
    const/16 v23, 0x0

    .line 939
    const/4 v7, -0x1

    move/from16 v27, v7

    .line 940
    goto/16 :goto_2

    .line 942
    :cond_2c
    if-eqz v12, :cond_2d

    .line 943
    const/16 v25, 0x0

    .line 944
    goto/16 :goto_2

    .line 947
    :cond_2d
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v7, v0, :cond_2e

    .line 948
    move v7, v13

    .line 950
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 951
    .restart local v4    # "addr":Ljava/lang/String;
    const/16 v20, 0x0

    .line 952
    .restart local v20    # "pers":Ljava/lang/String;
    if-eqz v23, :cond_2f

    if-ltz v28, :cond_2f

    .line 954
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 953
    invoke-static/range {v31 .. v31}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 955
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-nez v31, :cond_2f

    .line 956
    const/16 v20, 0x0

    .line 964
    :cond_2f
    if-eqz p2, :cond_30

    if-nez p1, :cond_30

    if-eqz v20, :cond_30

    .line 965
    const/16 v31, 0x40

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-ltz v31, :cond_30

    .line 966
    const/16 v31, 0x40

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-gez v31, :cond_30

    const/16 v31, 0x21

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-gez v31, :cond_30

    .line 967
    move-object/from16 v29, v4

    .line 968
    .restart local v29    # "tmp":Ljava/lang/String;
    move-object/from16 v4, v20

    .line 969
    move-object/from16 v20, v29

    .line 971
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_30
    if-nez v23, :cond_31

    if-nez p1, :cond_31

    if-eqz p2, :cond_35

    .line 972
    :cond_31
    if-nez v11, :cond_32

    .line 973
    const/16 v31, 0x0

    move/from16 v0, v25

    move/from16 v1, v31

    invoke-static {v4, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 974
    :cond_32
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 975
    .restart local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 976
    if-eqz v20, :cond_33

    .line 977
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 978
    :cond_33
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_34
    const/16 v25, 0x0

    .line 992
    const/16 v23, 0x0

    .line 993
    const/4 v7, -0x1

    move/from16 v27, v7

    .line 994
    const/4 v8, -0x1

    move/from16 v28, v8

    .line 995
    goto/16 :goto_2

    .line 981
    :cond_35
    new-instance v26, Ljava/util/StringTokenizer;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 982
    .local v26, "st":Ljava/util/StringTokenizer;
    :goto_e
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v31

    if-eqz v31, :cond_34

    .line 983
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "a":Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 985
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 986
    .restart local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 998
    .end local v3    # "a":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    .end local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v20    # "pers":Ljava/lang/String;
    .end local v26    # "st":Ljava/util/StringTokenizer;
    :sswitch_11
    const/16 v23, 0x1

    .line 999
    if-eqz v12, :cond_36

    .line 1000
    if-nez v11, :cond_36

    .line 1001
    new-instance v31, Ljavax/mail/internet/AddressException;

    const-string v32, "Nested group"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v13}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v31

    .line 1002
    :cond_36
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_37

    .line 1003
    move/from16 v27, v13

    .line 1004
    :cond_37
    if-eqz p2, :cond_3d

    if-nez p1, :cond_3d

    .line 1010
    add-int/lit8 v31, v13, 0x1

    move/from16 v0, v31

    if-ge v0, v15, :cond_39

    .line 1011
    const-string v5, ")>[]:@\\,."

    .line 1012
    .local v5, "addressSpecials":Ljava/lang/String;
    add-int/lit8 v31, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1013
    .local v18, "nc":C
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-ltz v31, :cond_39

    .line 1014
    const/16 v31, 0x40

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1024
    add-int/lit8 v10, v13, 0x2

    .local v10, "i":I
    :goto_f
    if-lt v10, v15, :cond_3b

    .line 1031
    :cond_38
    const/16 v31, 0x3b

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1038
    .end local v5    # "addressSpecials":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v18    # "nc":C
    :cond_39
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1039
    .local v9, "gname":Ljava/lang/String;
    sget-boolean v31, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    if-eqz v31, :cond_3c

    .line 1040
    const-string v31, "mailto"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3a

    .line 1041
    const-string v31, "From"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3a

    .line 1042
    const-string v31, "To"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3a

    .line 1043
    const-string v31, "Cc"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3a

    .line 1044
    const-string v31, "Subject"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3a

    .line 1045
    const-string v31, "Re"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3c

    .line 1046
    :cond_3a
    const/16 v27, -0x1

    goto/16 :goto_2

    .line 1025
    .end local v9    # "gname":Ljava/lang/String;
    .restart local v5    # "addressSpecials":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v18    # "nc":C
    :cond_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1026
    const/16 v31, 0x3b

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_38

    .line 1028
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    if-gez v31, :cond_38

    .line 1024
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 1048
    .end local v5    # "addressSpecials":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v18    # "nc":C
    .restart local v9    # "gname":Ljava/lang/String;
    :cond_3c
    const/4 v12, 0x1

    .line 1049
    goto/16 :goto_2

    .line 1050
    .end local v9    # "gname":Ljava/lang/String;
    :cond_3d
    const/4 v12, 0x1

    .line 1051
    goto/16 :goto_2

    .line 1107
    .end local v6    # "c":C
    .restart local v4    # "addr":Ljava/lang/String;
    .restart local v20    # "pers":Ljava/lang/String;
    :cond_3e
    new-instance v26, Ljava/util/StringTokenizer;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1108
    .restart local v26    # "st":Ljava/util/StringTokenizer;
    :goto_10
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 1109
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .restart local v3    # "a":Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1111
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1112
    .restart local v17    # "ma":Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 691
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_b
        0x28 -> :sswitch_1
        0x29 -> :sswitch_5
        0x2c -> :sswitch_10
        0x3a -> :sswitch_11
        0x3b -> :sswitch_f
        0x3c -> :sswitch_6
        0x3e -> :sswitch_a
        0x5b -> :sswitch_e
    .end sparse-switch

    .line 702
    :sswitch_data_1
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x5c -> :sswitch_2
    .end sparse-switch

    .line 782
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_8
        0x3e -> :sswitch_9
        0x5c -> :sswitch_7
    .end sparse-switch

    .line 855
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch

    .line 880
    :pswitch_data_0
    .packed-switch 0x5c
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

    .prologue
    .line 663
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "phrase"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 343
    .local v4, "len":I
    const/4 v5, 0x0

    .line 345
    .local v5, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 366
    if-eqz v5, :cond_0

    .line 367
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 368
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "phrase":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 346
    .restart local p0    # "phrase":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    .local v0, "c":C
    if-eq v0, v8, :cond_2

    if-ne v0, v9, :cond_6

    .line 349
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 350
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 358
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 352
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 353
    .local v1, "cc":C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 355
    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 360
    .end local v1    # "cc":C
    .end local v3    # "j":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    const/16 v7, 0x20

    if-ge v0, v7, :cond_7

    const/16 v7, 0xd

    if-eq v0, v7, :cond_7

    const/16 v7, 0xa

    if-eq v0, v7, :cond_7

    const/16 v7, 0x9

    if-ne v0, v7, :cond_8

    .line 361
    :cond_7
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_8

    sget-object v7, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_9

    .line 363
    :cond_8
    const/4 v5, 0x1

    .line 345
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .prologue
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

    .prologue
    .line 455
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 456
    :cond_0
    const/4 v4, 0x0

    .line 476
    :goto_0
    return-object v4

    .line 458
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-lt v0, v4, :cond_2

    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 461
    :cond_2
    if-eqz v0, :cond_3

    .line 462
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    add-int/lit8 p1, p1, 0x2

    .line 466
    :cond_3
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v1

    .line 468
    .local v1, "len":I
    add-int v4, p1, v1

    const/16 v5, 0x4c

    if-le v4, v5, :cond_4

    .line 469
    const-string v4, "\r\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const/16 p1, 0x8

    .line 472
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    const/4 v4, 0x1

    .line 375
    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 379
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 380
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 389
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 381
    .restart local v1    # "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 382
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 383
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 384
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 396
    instance-of v3, p1, Ljavax/mail/internet/InternetAddress;

    if-nez v3, :cond_1

    .line 405
    .end local p1    # "a":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 399
    .restart local p1    # "a":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    .end local p1    # "a":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "s":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 401
    goto :goto_0

    .line 402
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 403
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 5
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1326
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "addr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-object v3

    .line 1330
    :cond_1
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1332
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1333
    .local v1, "ix":I
    if-ltz v1, :cond_0

    .line 1336
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1338
    .local v2, "list":Ljava/lang/String;
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    goto :goto_0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 280
    :goto_0
    return-object v1

    .line 268
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 270
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 280
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 415
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 242
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
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

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v0, ""

    .line 292
    .local v0, "a":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .end local v0    # "a":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v0

    .line 291
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_0

    .line 299
    .restart local v0    # "a":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 295
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    .line 316
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_0

    .line 319
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1134
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    .line 1138
    :goto_0
    return-void

    .line 1137
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
