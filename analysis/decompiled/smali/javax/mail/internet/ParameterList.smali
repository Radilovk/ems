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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    const-string v0, "mail.mime.encodeparameters"

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
    const-string v0, "mail.mime.decodeparameters.strict"

    .line 146
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
    const-string v0, "mail.mime.splitlongparameters"

    .line 155
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 154
    sput-boolean v0, Ljavax/mail/internet/ParameterList;->splitLongParameters:Z

    .line 743
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/mail/internet/ParameterList;->hex:[C

    .line 746
    return-void

    .line 743
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

    .prologue
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
    .locals 11
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x4

    const/16 v9, 0x3b

    const/4 v8, -0x1

    .line 230
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 232
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v6, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v6}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 235
    .local v3, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 238
    .local v4, "type":I
    if-ne v4, v10, :cond_2

    .line 308
    :cond_0
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v6, :cond_1

    .line 313
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V

    .line 315
    :cond_1
    return-void

    .line 241
    :cond_2
    int-to-char v6, v4

    if-ne v6, v9, :cond_a

    .line 243
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 245
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 248
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 249
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "In parameter list <"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 250
    const-string v8, ", expected parameter name, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 251
    const-string v8, "got \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 249
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    :cond_3
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v6

    int-to-char v6, v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_4

    .line 257
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "In parameter list <"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 258
    const-string v8, ", expected \'=\', "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 259
    const-string v8, "got \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 262
    :cond_4
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->windowshack:Z

    if-eqz v6, :cond_6

    .line 263
    const-string v6, "name"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "filename"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 264
    :cond_5
    const/4 v6, 0x1

    invoke-virtual {v0, v9, v6}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 269
    :goto_1
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 271
    if-eq v4, v8, :cond_8

    .line 272
    const/4 v6, -0x2

    if-eq v4, v6, :cond_8

    .line 273
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "In parameter list <"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 274
    const-string v8, ", expected parameter value, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 275
    const-string v8, "got \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    :cond_6
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    if-eqz v6, :cond_7

    .line 266
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    goto :goto_1

    .line 268
    :cond_7
    invoke-virtual {v0, v9}, Ljavax/mail/internet/HeaderTokenizer;->next(C)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    goto :goto_1

    .line 277
    :cond_8
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "value":Ljava/lang/String;
    iput-object v2, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 279
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v6, :cond_9

    .line 280
    invoke-direct {p0, v2, v5}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_9
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 290
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    if-ne v4, v8, :cond_d

    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 291
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->applehack:Z

    if-eqz v6, :cond_b

    .line 292
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 293
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 294
    :cond_b
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    if-nez v6, :cond_d

    .line 297
    :cond_c
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    .local v1, "lastValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .restart local v5    # "value":Ljava/lang/String;
    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 301
    .end local v1    # "lastValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljavax/mail/internet/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "In parameter list <"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 302
    const-string v8, ", expected \';\', got \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 303
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private combineMultisegmentNames(Z)V
    .locals 17
    .param p1, "keepConsistentOnFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v10, 0x0

    .line 410
    .local v10, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 411
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_4

    .line 476
    const/4 v10, 0x1

    .line 483
    if-nez p1, :cond_0

    if-eqz v10, :cond_3

    .line 486
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 489
    .local v8, "sit":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_14

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v14, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 506
    .end local v8    # "sit":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 510
    :cond_3
    return-void

    .line 412
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 413
    .local v6, "name":Ljava/lang/String;
    new-instance v5, Ljavax/mail/internet/ParameterList$MultiValue;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>(Ljavax/mail/internet/ParameterList$MultiValue;)V

    .line 418
    .local v5, "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    const/4 v2, 0x0

    .line 419
    .local v2, "charset":Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 421
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 422
    .local v7, "segment":I
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 423
    .local v9, "sname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 424
    .local v12, "v":Ljava/lang/Object;
    if-nez v12, :cond_9

    .line 450
    :goto_3
    if-nez v7, :cond_d

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "segment":I
    .end local v9    # "sname":Ljava/lang/String;
    .end local v12    # "v":Ljava/lang/Object;
    :catchall_0
    move-exception v14

    .line 483
    if-nez p1, :cond_5

    if-eqz v10, :cond_8

    .line 486
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 489
    .restart local v8    # "sit":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_13

    .line 502
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 506
    .end local v8    # "sit":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->clear()V

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 509
    :cond_8
    throw v14

    .line 426
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "segment":I
    .restart local v9    # "sname":Ljava/lang/String;
    .restart local v12    # "v":Ljava/lang/Object;
    :cond_9
    :try_start_2
    invoke-virtual {v5, v12}, Ljavax/mail/internet/ParameterList$MultiValue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    :try_start_3
    instance-of v14, v12, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v14, :cond_c

    .line 429
    move-object v0, v12

    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    move-object v13, v0

    .line 430
    .local v13, "vv":Ljavax/mail/internet/ParameterList$Value;
    if-nez v7, :cond_b

    .line 433
    iget-object v2, v13, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 441
    :cond_a
    iget-object v14, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    invoke-static {v14, v1}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v14, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 435
    .restart local v12    # "v":Ljava/lang/Object;
    .restart local v13    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :cond_b
    if-nez v2, :cond_a

    .line 437
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v14, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 445
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :catch_0
    move-exception v14

    goto :goto_5

    .line 443
    .restart local v12    # "v":Ljava/lang/Object;
    :cond_c
    check-cast v12, Ljava/lang/String;

    .end local v12    # "v":Ljava/lang/Object;
    invoke-static {v12}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 455
    .restart local v12    # "v":Ljava/lang/Object;
    :cond_d
    if-eqz v2, :cond_e

    .line 456
    :try_start_6
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_10

    .line 458
    :cond_f
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 459
    :cond_10
    if-eqz v2, :cond_11

    .line 460
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v14, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 462
    :cond_11
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 463
    :catch_1
    move-exception v11

    .line 464
    .local v11, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_9
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_12

    .line 465
    new-instance v14, Ljavax/mail/internet/ParseException;

    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 468
    :cond_12
    :try_start_a
    const-string v14, "iso-8859-1"

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 469
    :catch_2
    move-exception v14

    goto :goto_6

    .line 490
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "segment":I
    .end local v9    # "sname":Ljava/lang/String;
    .end local v11    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "v":Ljava/lang/Object;
    .restart local v8    # "sit":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 491
    .restart local v12    # "v":Ljava/lang/Object;
    instance-of v15, v12, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v15, :cond_6

    move-object v13, v12

    .line 492
    check-cast v13, Ljavax/mail/internet/ParameterList$Value;

    .line 495
    .restart local v13    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :try_start_b
    iget-object v15, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v0, v13, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 494
    iput-object v15, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 496
    :catch_3
    move-exception v3

    .line 497
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v15, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v15, :cond_6

    .line 498
    new-instance v14, Ljavax/mail/internet/ParseException;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 490
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 491
    .restart local v12    # "v":Ljava/lang/Object;
    instance-of v14, v12, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v14, :cond_1

    move-object v13, v12

    .line 492
    check-cast v13, Ljavax/mail/internet/ParameterList$Value;

    .line 495
    .restart local v13    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :try_start_c
    iget-object v14, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v15, v13, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    invoke-static {v14, v15}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 494
    iput-object v14, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 496
    :catch_4
    move-exception v3

    .line 497
    .restart local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_1

    .line 498
    new-instance v14, Ljavax/mail/internet/ParseException;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v0, v7, [B

    .line 833
    .local v0, "b":[B
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v1, 0x0

    .local v1, "bi":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 850
    if-eqz p1, :cond_0

    .line 851
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 852
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 853
    :cond_1
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object p1

    .line 854
    :cond_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v7

    .line 834
    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 835
    .local v3, "c":C
    const/16 v7, 0x25

    if-ne v3, v7, :cond_4

    .line 837
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x3

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "hex":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    int-to-char v3, v7

    .line 839
    add-int/lit8 v6, v6, 0x2

    .line 848
    .end local v5    # "hex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bi":I
    .local v2, "bi":I
    int-to-byte v7, v3

    aput-byte v7, v0, v1

    .line 833
    add-int/lit8 v6, v6, 0x1

    move v1, v2

    .end local v2    # "bi":I
    .restart local v1    # "bi":I
    goto :goto_0

    .line 840
    :catch_0
    move-exception v4

    .line 841
    .local v4, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v7, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v7, :cond_4

    .line 842
    new-instance v7, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 843
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 844
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v7, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v7, :cond_4

    .line 845
    new-instance v7, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 884
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 869
    .local v0, "c":C
    const/16 v4, 0x25

    if-ne v0, v4, :cond_1

    .line 871
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x3

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "hex":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    int-to-char v0, v4

    .line 873
    add-int/lit8 v3, v3, 0x2

    .line 882
    .end local v2    # "hex":Ljava/lang/String;
    :cond_1
    int-to-byte v4, v0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 867
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v1

    .line 875
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v4, :cond_1

    .line 876
    new-instance v4, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 877
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 878
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v4, :cond_1

    .line 879
    new-instance v4, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    const/4 v6, 0x0

    .line 755
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move-object v5, v6

    .line 779
    :goto_0
    return-object v5

    .line 760
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 764
    .local v0, "b":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v7, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 765
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-lt v3, v7, :cond_1

    .line 775
    new-instance v5, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 776
    .local v5, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p1, v5, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 777
    iput-object p0, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 778
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    goto :goto_0

    .line 761
    .end local v0    # "b":[B
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "v":Ljavax/mail/internet/ParameterList$Value;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    move-object v5, v6

    .line 762
    goto :goto_0

    .line 767
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":[B
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v1, v7

    .line 769
    .local v1, "c":C
    const/16 v7, 0x20

    if-le v1, v7, :cond_2

    const/16 v7, 0x7f

    if-ge v1, v7, :cond_2

    const/16 v7, 0x2a

    if-eq v1, v7, :cond_2

    const/16 v7, 0x27

    if-eq v1, v7, :cond_2

    if-eq v1, v10, :cond_2

    .line 770
    const-string v7, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 771
    :cond_2
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v9, v1, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/ParameterList;->hex:[C

    and-int/lit8 v9, v1, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 766
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 773
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 787
    new-instance v5, Ljavax/mail/internet/ParameterList$Value;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .line 788
    .local v5, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p0, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    iput-object p0, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 790
    const/16 v6, 0x27

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 791
    .local v2, "i":I
    if-gez v2, :cond_0

    .line 792
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v6, :cond_2

    .line 793
    new-instance v6, Ljavax/mail/internet/ParseException;

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Missing charset in encoded value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 793
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 808
    .end local v2    # "i":I
    :catch_0
    move-exception v4

    .line 809
    .local v4, "nex":Ljava/lang/NumberFormatException;
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v6, :cond_2

    .line 810
    new-instance v6, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 797
    .end local v4    # "nex":Ljava/lang/NumberFormatException;
    .restart local v2    # "i":I
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "charset":Ljava/lang/String;
    const/16 v6, 0x27

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 799
    .local v3, "li":I
    if-gez v3, :cond_1

    .line 800
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v6, :cond_2

    .line 801
    new-instance v6, Ljavax/mail/internet/ParseException;

    .line 802
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Missing language in encoded value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 801
    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 811
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "li":I
    :catch_1
    move-exception v1

    .line 812
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v6, :cond_2

    .line 813
    new-instance v6, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 806
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "li":I
    :cond_1
    add-int/lit8 v6, v3, 0x1

    :try_start_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 807
    iput-object v0, v5, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 815
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "li":I
    :cond_2
    return-object v5
.end method

.method private putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 359
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 360
    .local v2, "star":I
    if-gez v2, :cond_0

    .line 362
    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    .line 365
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v3

    .line 368
    .local v3, "v":Ljavax/mail/internet/ParameterList$Value;
    :try_start_0
    iget-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v5, v3, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    invoke-static {v4, v5}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_1
    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v4, :cond_1

    .line 371
    new-instance v4, Ljavax/mail/internet/ParseException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "v":Ljavax/mail/internet/ParameterList$Value;
    :cond_2
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "rname":Ljava/lang/String;
    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    const-string v5, ""

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    const-string v4, "*0*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v3

    .line 390
    .restart local v3    # "v":Ljavax/mail/internet/ParameterList$Value;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 395
    .end local v3    # "v":Ljavax/mail/internet/ParameterList$Value;
    :goto_2
    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 386
    :cond_3
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V

    .restart local v3    # "v":Ljavax/mail/internet/ParameterList$Value;
    move-object v4, v3

    .line 387
    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    move-object v4, v3

    .line 388
    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    goto :goto_1

    .line 393
    .end local v3    # "v":Ljavax/mail/internet/ParameterList$Value;
    :cond_4
    move-object v3, p2

    .local v3, "v":Ljava/lang/String;
    goto :goto_2
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 740
    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public combineSegments()V
    .locals 1

    .prologue
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

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v2, :cond_0

    .line 534
    check-cast v0, Ljavax/mail/internet/ParameterList$MultiValue;

    .end local v0    # "v":Ljava/lang/Object;
    iget-object v1, v0, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .line 539
    .local v1, "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 535
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v2, :cond_1

    .line 536
    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    .end local v0    # "v":Ljava/lang/Object;
    iget-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    .line 538
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
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

    .prologue
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
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 551
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    .end local v0    # "pex":Ljavax/mail/internet/ParseException;
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 575
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v1, :cond_1

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

    .line 584
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :goto_0
    return-void

    .line 581
    .restart local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 14
    .param p1, "used"    # I

    .prologue
    const/16 v13, 0x3c

    .line 631
    new-instance v5, Ljavax/mail/internet/ParameterList$ToStringBuffer;

    invoke-direct {v5, p1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;-><init>(I)V

    .line 632
    .local v5, "sb":Ljavax/mail/internet/ParameterList$ToStringBuffer;
    iget-object v11, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 634
    .local v0, "e":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 692
    invoke-virtual {v5}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 635
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 636
    .local v1, "ent":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 638
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 639
    .local v7, "v":Ljava/lang/Object;
    instance-of v11, v7, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v11, :cond_3

    move-object v10, v7

    .line 640
    check-cast v10, Ljavax/mail/internet/ParameterList$MultiValue;

    .line 641
    .local v10, "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 642
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v10}, Ljavax/mail/internet/ParameterList$MultiValue;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 643
    invoke-virtual {v10, v2}, Ljavax/mail/internet/ParameterList$MultiValue;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 645
    .local v8, "va":Ljava/lang/Object;
    instance-of v11, v8, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v11, :cond_2

    .line 646
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "ns":Ljava/lang/String;
    check-cast v8, Ljavax/mail/internet/ParameterList$Value;

    .end local v8    # "va":Ljava/lang/Object;
    iget-object v9, v8, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 652
    .local v9, "value":Ljava/lang/String;
    :goto_2
    invoke-static {v9}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 649
    .end local v4    # "ns":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "va":Ljava/lang/Object;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "ns":Ljava/lang/String;
    move-object v9, v8

    .line 650
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_2

    .line 654
    .end local v2    # "i":I
    .end local v4    # "ns":Ljava/lang/String;
    .end local v8    # "va":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    :cond_3
    instance-of v11, v7, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v11, :cond_4

    .line 659
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    check-cast v7, Ljavax/mail/internet/ParameterList$Value;

    .end local v7    # "v":Ljava/lang/Object;
    iget-object v9, v7, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 661
    .restart local v9    # "value":Ljava/lang/String;
    invoke-static {v9}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_4
    move-object v9, v7

    .line 663
    check-cast v9, Ljava/lang/String;

    .line 676
    .restart local v9    # "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v13, :cond_6

    .line 677
    sget-boolean v11, Ljavax/mail/internet/ParameterList;->splitLongParameters:Z

    if-eqz v11, :cond_6

    sget-boolean v11, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v11, :cond_6

    .line 678
    const/4 v6, 0x0

    .line 679
    .local v6, "seg":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v13, :cond_5

    .line 685
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 686
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 683
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 688
    .end local v6    # "seg":I
    :cond_6
    invoke-static {v9}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
