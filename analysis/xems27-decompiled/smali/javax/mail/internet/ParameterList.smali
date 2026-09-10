.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/ParameterList$MultiValue;,
        Ljavax/mail/internet/ParameterList$ParamEnum;,
        Ljavax/mail/internet/ParameterList$ToStringBuffer;,
        Ljavax/mail/internet/ParameterList$Value;
    }
.end annotation


# static fields
.field private static final applehack:Z

.field private static final decodeParameters:Z

.field private static final decodeParametersStrict:Z

.field private static final encodeParameters:Z

.field private static final hex:[C

.field private static final parametersStrict:Z

.field private static final splitLongParameters:Z

.field private static final windowshack:Z


# instance fields
.field private lastName:Ljava/lang/String;

.field private list:Ljava/util/Map;

.field private multisegmentNames:Ljava/util/Set;

.field private slist:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 142
    const-string v0, "mail.mime.encodeparameters"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 144
    const-string v0, "mail.mime.decodeparameters"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 147
    nop

    .line 146
    const-string v0, "mail.mime.decodeparameters.strict"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 149
    const-string v0, "mail.mime.applefilenames"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->applehack:Z

    .line 151
    const-string v0, "mail.mime.windowsfilenames"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->windowshack:Z

    .line 153
    const-string v0, "mail.mime.parameters.strict"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    .line 156
    nop

    .line 155
    const-string v0, "mail.mime.splitlongparameters"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 154
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->splitLongParameters:Z

    .line 743
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 744
    nop

    .line 745
    nop

    .line 743
    sput-object v0, Ljavax/mail/internet/ParameterList;->hex:[C

    .line 746
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 213
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    .line 217
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 232
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 235
    .local v1, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 238
    .local v2, "type":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    .line 239
    goto :goto_1

    .line 241
    :cond_0
    int-to-char v4, v2

    const-string v5, "filename"

    const-string v6, "name"

    const/4 v7, -0x1

    const/16 v8, 0x3b

    const-string v9, "\""

    const-string v10, ">"

    const-string v11, "In parameter list <"

    if-ne v4, v8, :cond_b

    .line 243
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 246
    nop

    .line 308
    .end local v1    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .end local v2    # "type":I
    :goto_1
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v1, :cond_1

    .line 313
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V

    .line 315
    :cond_1
    return-void

    .line 248
    .restart local v1    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .restart local v2    # "type":I
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    const-string v4, "got \""

    if-ne v3, v7, :cond_a

    .line 252
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v12

    int-to-char v12, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_9

    .line 262
    sget-boolean v12, Ljavax/mail/internet/ParameterList;->windowshack:Z

    if-eqz v12, :cond_4

    .line 263
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 264
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v0, v8, v5}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    goto :goto_2

    .line 265
    :cond_4
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    if-eqz v5, :cond_5

    .line 266
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    goto :goto_2

    .line 268
    :cond_5
    invoke-virtual {v0, v8}, Ljavax/mail/internet/HeaderTokenizer;->next(C)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 269
    :goto_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 271
    if-eq v2, v7, :cond_7

    .line 272
    const/4 v5, -0x2

    if-ne v2, v5, :cond_6

    goto :goto_3

    .line 273
    :cond_6
    new-instance v5, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v7, ", expected parameter value, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-direct {v5, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "value":Ljava/lang/String;
    iput-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 279
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v5, :cond_8

    .line 280
    invoke-direct {p0, v3, v4}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_8
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    goto/16 :goto_0

    .line 257
    .end local v4    # "value":Ljava/lang/String;
    :cond_9
    new-instance v5, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v7, ", expected \'=\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-direct {v5, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 249
    .end local v3    # "name":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v6, ", expected parameter name, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_b
    if-ne v2, v7, :cond_e

    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 291
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->applehack:Z

    if-eqz v4, :cond_c

    .line 292
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 293
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 294
    :cond_c
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    if-nez v3, :cond_e

    .line 297
    :cond_d
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "lastValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v3    # "lastValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 301
    .end local v4    # "value":Ljava/lang/String;
    :cond_e
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v5, ", expected \';\', got \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private combineMultisegmentNames(Z)V
    .locals 11
    .param p1, "keepConsistentOnFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    .local v1, "it":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_6

    .line 476
    const/4 v0, 0x1

    .line 477
    .end local v1    # "it":Ljava/util/Iterator;
    nop

    .line 483
    if-nez p1, :cond_0

    if-eqz v0, :cond_5

    .line 486
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 488
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, "sit":Ljava/util/Iterator;
    nop

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 490
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 491
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v2, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v3, :cond_1

    .line 492
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/ParameterList$Value;

    .line 494
    .local v3, "vv":Ljavax/mail/internet/ParameterList$Value;
    nop

    .line 495
    :try_start_1
    iget-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v5, v3, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    invoke-static {v4, v5}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    iput-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    goto :goto_1

    :catch_0
    move-exception v4

    .line 497
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v5, :cond_3

    goto :goto_1

    .line 498
    :cond_3
    new-instance v5, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    .end local v1    # "sit":Ljava/util/Iterator;
    .end local v2    # "v":Ljava/lang/Object;
    .end local v3    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_4
    :goto_2
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 507
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 510
    :cond_5
    return-void

    .line 412
    .local v1, "it":Ljava/util/Iterator;
    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 413
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljavax/mail/internet/ParameterList$MultiValue;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>(Ljavax/mail/internet/ParameterList$MultiValue;)V

    .line 418
    .local v3, "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    const/4 v4, 0x0

    .line 419
    .local v4, "charset":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 421
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 422
    .local v6, "segment":I
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 423
    .local v7, "sname":Ljava/lang/String;
    iget-object v8, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 424
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_7

    .line 425
    goto :goto_4

    .line 426
    :cond_7
    invoke-virtual {v3, v8}, Ljavax/mail/internet/ParameterList$MultiValue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    :try_start_3
    instance-of v9, v8, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v9, :cond_10

    .line 429
    move-object v9, v8

    check-cast v9, Ljavax/mail/internet/ParameterList$Value;

    .line 430
    .local v9, "vv":Ljavax/mail/internet/ParameterList$Value;
    if-nez v6, :cond_8

    .line 433
    iget-object v10, v9, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object v4, v10

    .line 434
    goto :goto_9

    .line 435
    :cond_8
    if-nez v4, :cond_f

    .line 437
    iget-object v10, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    nop

    .line 450
    .end local v7    # "sname":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    .end local v9    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :goto_4
    if-nez v6, :cond_9

    .line 452
    :try_start_4
    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 453
    goto/16 :goto_0

    .line 455
    :cond_9
    if-eqz v4, :cond_a

    .line 456
    :try_start_5
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    goto :goto_5

    .line 463
    :catch_1
    move-exception v7

    goto :goto_6

    .line 457
    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    .line 458
    :cond_b
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 459
    :cond_c
    if-eqz v4, :cond_d

    .line 460
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    goto :goto_8

    .line 462
    :cond_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 463
    goto :goto_8

    .line 464
    .local v7, "uex":Ljava/io/UnsupportedEncodingException;
    :goto_6
    :try_start_6
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_e

    .line 468
    :try_start_7
    const-string v8, "iso-8859-1"

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 469
    :catch_2
    move-exception v8

    :goto_7
    nop

    .line 473
    .end local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_8
    :try_start_8
    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 465
    .restart local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_e
    new-instance v8, Ljavax/mail/internet/ParseException;

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p1    # "keepConsistentOnFailure":Z
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 441
    .restart local v0    # "success":Z
    .local v7, "sname":Ljava/lang/String;
    .restart local v8    # "v":Ljava/lang/Object;
    .restart local v9    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .restart local p1    # "keepConsistentOnFailure":Z
    :cond_f
    :goto_9
    :try_start_9
    iget-object v10, v9, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    invoke-static {v10, v5}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 442
    .end local v9    # "vv":Ljavax/mail/internet/ParameterList$Value;
    goto :goto_b

    .line 443
    :cond_10
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    .line 445
    :catch_3
    move-exception v9

    :goto_a
    nop

    .line 448
    :goto_b
    :try_start_a
    iget-object v9, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 421
    nop

    .end local v7    # "sname":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 477
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v4    # "charset":Ljava/lang/String;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "segment":I
    :catchall_0
    move-exception v1

    .line 483
    if-nez p1, :cond_11

    if-eqz v0, :cond_16

    .line 486
    :cond_11
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 488
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 489
    .local v2, "sit":Ljava/util/Iterator;
    nop

    :cond_12
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 490
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 491
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v4, :cond_12

    .line 492
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    .line 494
    .local v4, "vv":Ljavax/mail/internet/ParameterList$Value;
    nop

    .line 495
    :try_start_b
    iget-object v5, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v6, v4, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    invoke-static {v5, v6}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 494
    iput-object v5, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_4

    .line 496
    goto :goto_c

    :catch_4
    move-exception v5

    .line 497
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v6, :cond_13

    goto :goto_c

    .line 498
    :cond_13
    new-instance v1, Ljavax/mail/internet/ParseException;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_14
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 506
    .end local v2    # "sit":Ljava/util/Iterator;
    :cond_15
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 507
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 509
    :cond_16
    throw v1
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 833
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "bi":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 850
    if-eqz p1, :cond_0

    .line 851
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 852
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 853
    :cond_1
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object p1

    .line 854
    :cond_2
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v3

    .line 834
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 835
    .local v3, "c":C
    const/16 v4, 0x25

    if-ne v3, v4, :cond_6

    .line 837
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x3

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "hex":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v3, v5

    .line 839
    nop

    .end local v4    # "hex":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 840
    goto :goto_1

    .line 843
    :catch_0
    move-exception v4

    .line 844
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v5, :cond_4

    goto :goto_1

    .line 845
    :cond_4
    new-instance v5, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 840
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v4

    .line 841
    .local v4, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v5, :cond_5

    goto :goto_1

    .line 842
    :cond_5
    new-instance v5, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 848
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "bi":I
    .local v4, "bi":I
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 833
    .end local v3    # "c":C
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 884
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 869
    .local v1, "c":C
    const/16 v2, 0x25

    if-ne v1, v2, :cond_3

    .line 871
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "hex":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v1, v3

    .line 873
    nop

    .end local v2    # "hex":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x2

    .line 874
    goto :goto_1

    .line 877
    :catch_0
    move-exception v2

    .line 878
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 879
    :cond_1
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 874
    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 875
    .local v2, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v3, :cond_2

    goto :goto_1

    .line 876
    :cond_2
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 882
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_1
    int-to-byte v2, v1

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 867
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 755
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 756
    return-object v2

    .line 760
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .local v0, "b":[B
    nop

    .line 764
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 765
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    .line 775
    .end local v3    # "i":I
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    move-object v2, v3

    .line 776
    .local v2, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p1, v2, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 777
    iput-object p0, v2, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 779
    return-object v2

    .line 767
    .end local v2    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local v3    # "i":I
    :cond_1
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 769
    .local v4, "c":C
    const/16 v5, 0x20

    const/16 v6, 0x25

    if-le v4, v5, :cond_3

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    if-eq v4, v6, :cond_3

    .line 770
    const-string v5, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    goto :goto_1

    .line 773
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 771
    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ljavax/mail/internet/ParameterList;->hex:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 772
    nop

    .line 766
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 761
    .end local v0    # "b":[B
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    .line 762
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v2
.end method

.method private static extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 787
    new-instance v0, Ljavax/mail/internet/ParameterList$Value;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 788
    .local v0, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 790
    const/16 v1, 0x27

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 791
    .local v2, "i":I
    if-gez v2, :cond_1

    .line 792
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v1, :cond_0

    .line 795
    return-object v0

    .line 793
    :cond_0
    new-instance v1, Ljavax/mail/internet/ParseException;

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing charset in encoded value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .end local p0    # "value":Ljava/lang/String;
    throw v1

    .line 797
    .restart local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "charset":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 799
    .local v1, "li":I
    if-gez v1, :cond_3

    .line 800
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v4, :cond_2

    .line 803
    return-object v0

    .line 801
    :cond_2
    new-instance v4, Ljavax/mail/internet/ParseException;

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Missing language in encoded value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 801
    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .end local p0    # "value":Ljava/lang/String;
    throw v4

    .line 806
    .restart local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local p0    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 807
    iput-object v3, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v1    # "li":I
    .end local v2    # "i":I
    .end local v3    # "charset":Ljava/lang/String;
    goto :goto_0

    .line 811
    :catch_0
    move-exception v1

    .line 812
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_4

    goto :goto_0

    .line 813
    :cond_4
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 809
    .local v1, "nex":Ljava/lang/NumberFormatException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_5

    .line 815
    .end local v1    # "nex":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v0

    .line 810
    .restart local v1    # "nex":Ljava/lang/NumberFormatException;
    :cond_5
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 359
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 360
    .local v0, "star":I
    if-gez v0, :cond_0

    .line 362
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 365
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v1

    .line 368
    .local v1, "v":Ljavax/mail/internet/ParameterList$Value;
    :try_start_0
    iget-object v2, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v3, v1, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    invoke-static {v2, v3}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    :catch_0
    move-exception v2

    .line 370
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v3, :cond_1

    .line 373
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v1    # "v":Ljavax/mail/internet/ParameterList$Value;
    goto :goto_3

    .line 371
    .restart local v1    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    .end local v1    # "v":Ljavax/mail/internet/ParameterList$Value;
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "rname":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    const-string v3, "*0*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v3

    .line 385
    .local v3, "v":Ljava/lang/Object;
    goto :goto_1

    .line 386
    .end local v3    # "v":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 387
    .restart local v3    # "v":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 388
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 390
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 391
    goto :goto_2

    .line 393
    .end local v3    # "v":Ljava/lang/Object;
    :cond_4
    move-object v3, p2

    .line 395
    .restart local v3    # "v":Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v1    # "rname":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    :goto_3
    return-void
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 740
    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public combineSegments()V
    .locals 1

    .line 338
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 340
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 345
    :cond_0
    :goto_1
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v1, :cond_0

    .line 534
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$MultiValue;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 535
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v1, :cond_1

    .line 536
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$Value;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 538
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 539
    .restart local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 2

    .line 603
    new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 593
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 551
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    .line 553
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    :catch_0
    move-exception v0

    .line 556
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v0    # "pex":Ljavax/mail/internet/ParseException;
    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .line 575
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v0, :cond_1

    .line 576
    invoke-static {p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v0

    .line 578
    .local v0, "ev":Ljavax/mail/internet/ParameterList$Value;
    if-eqz v0, :cond_0

    .line 579
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 518
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 12
    .param p1, "used"    # I

    .line 631
    new-instance v0, Ljavax/mail/internet/ParameterList$ToStringBuffer;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;-><init>(I)V

    .line 632
    .local v0, "sb":Ljavax/mail/internet/ParameterList$ToStringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 634
    .local v1, "e":Ljava/util/Iterator;
    nop

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 692
    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 635
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 636
    .local v2, "ent":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 638
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 639
    .local v4, "v":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/mail/internet/ParameterList$MultiValue;

    const-string v6, "*"

    if-eqz v5, :cond_4

    .line 640
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/ParameterList$MultiValue;

    .line 641
    .local v5, "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 642
    .end local v3    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Ljavax/mail/internet/ParameterList$MultiValue;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 654
    .end local v3    # "i":I
    .end local v5    # "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    goto :goto_0

    .line 643
    .restart local v3    # "i":I
    .restart local v5    # "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    :cond_2
    invoke-virtual {v5, v3}, Ljavax/mail/internet/ParameterList$MultiValue;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 645
    .local v8, "va":Ljava/lang/Object;
    instance-of v9, v8, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v9, :cond_3

    .line 646
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 647
    .local v9, "ns":Ljava/lang/String;
    move-object v10, v8

    check-cast v10, Ljavax/mail/internet/ParameterList$Value;

    iget-object v10, v10, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 648
    .local v10, "value":Ljava/lang/String;
    goto :goto_2

    .line 649
    .end local v9    # "ns":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 650
    .restart local v9    # "ns":Ljava/lang/String;
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .line 652
    .restart local v10    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {v10}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .end local v8    # "va":Ljava/lang/Object;
    .end local v9    # "ns":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 654
    .end local v5    # "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :cond_4
    instance-of v5, v4, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v5, :cond_5

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/ParameterList$Value;

    iget-object v5, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 661
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    goto/16 :goto_0

    .line 663
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 676
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3c

    if-le v7, v8, :cond_7

    .line 677
    sget-boolean v7, Ljavax/mail/internet/ParameterList;->splitLongParameters:Z

    if-eqz v7, :cond_7

    sget-boolean v7, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v7, :cond_7

    .line 678
    const/4 v7, 0x0

    .line 679
    .local v7, "seg":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 680
    .end local v3    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    nop

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v8, :cond_6

    .line 685
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .end local v7    # "seg":I
    goto/16 :goto_0

    .line 681
    .restart local v7    # "seg":I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 683
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 688
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "seg":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_7
    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
