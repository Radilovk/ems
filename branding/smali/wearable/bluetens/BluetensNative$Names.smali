.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;
.super Ljava/lang/Object;
.source "BluetensNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Names"
.end annotation


# instance fields
.field final any:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bg:Z

.field final en:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 3

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->mine:Ljava/util/Map;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->en:Ljava/util/Map;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->any:Ljava/util/Map;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->meta:Ljava/util/Map;

    .line 282
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->bg:Z

    .line 283
    return-void
.end method

.method static first(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 346
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-ge v2, v3, :cond_27

    aget-object v0, p1, v2

    .line 347
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 348
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_23

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 349
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_22
    return-object v0

    .line 346
    :cond_23
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 352
    :cond_27
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method flatten(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 299
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 300
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 303
    :goto_32
    nop

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_40

    move-object v0, v1

    .line 304
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v0, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->flatten(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    goto :goto_4

    :cond_3e
    move-object v3, v0

    .line 302
    goto :goto_32

    .line 305
    :cond_40
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 306
    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 310
    :cond_56
    return-void
.end method

.method of(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 376
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->meta:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 378
    if-eqz v0, :cond_2e

    .line 379
    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v0, v5

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aget-object v3, v0, v4

    if-eqz v3, :cond_2c

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    aput-object v0, v2, v4

    move-object v0, v2

    .line 385
    :goto_2b
    return-object v0

    :cond_2c
    move-object v0, v1

    .line 379
    goto :goto_28

    .line 381
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->mine:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    if-nez v0, :cond_40

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->en:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    :cond_40
    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    move-object v0, v2

    goto :goto_2b
.end method

.method read(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 287
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v2, ".json"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->bg:Z

    if-eqz v0, :cond_44

    const-string v0, "bg"

    :goto_29
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->mine:Ljava/util/Map;

    move-object v2, v0

    .line 291
    :goto_32
    if-eqz v2, :cond_40

    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_40

    .line 292
    const-string v3, ""

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->flatten(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 294
    :cond_40
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->walk(Ljava/lang/Object;)V

    .line 295
    return-void

    .line 289
    :cond_44
    const-string v0, "en"

    goto :goto_29

    .line 290
    :cond_47
    const-string v0, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->en:Ljava/util/Map;

    move-object v2, v0

    goto :goto_32

    :cond_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_5e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->any:Ljava/util/Map;

    move-object v2, v0

    goto :goto_32

    :cond_5e
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_32
.end method

.method tr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 356
    if-nez p1, :cond_4

    .line 357
    const/4 p1, 0x0

    .line 371
    :cond_3
    :goto_3
    return-object p1

    .line 359
    :cond_4
    const-string v0, "{{"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 361
    if-lez v1, :cond_52

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 364
    :goto_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->mine:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    if-nez v0, :cond_44

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->en:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    :cond_44
    if-nez v0, :cond_4e

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->any:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    :cond_4e
    if-eqz v0, :cond_3

    move-object p1, v0

    goto :goto_3

    :cond_52
    move-object v1, v0

    goto :goto_32
.end method

.method walk(Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 313
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_1b

    .line 314
    check-cast p1, Lorg/json/JSONArray;

    .line 315
    :goto_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_10f

    .line 316
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->walk(Ljava/lang/Object;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 318
    :cond_1b
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_10f

    .line 319
    check-cast p1, Lorg/json/JSONObject;

    .line 320
    const/4 v1, 0x0

    .line 321
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "file"

    aput-object v2, v3, v0

    const-string v2, "File"

    aput-object v2, v3, v8

    const-string v2, "FileName"

    aput-object v2, v3, v9

    const-string v2, "fileName"

    aput-object v2, v3, v10

    const-string v2, "filename"

    aput-object v2, v3, v11

    const/4 v2, 0x5

    const-string v4, "lok"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "Lok"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "script"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "Script"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "id"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "Id"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "ID"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v0

    :goto_63
    if-ge v2, v4, :cond_110

    aget-object v5, v3, v2

    .line 323
    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_109

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-ge v6, v7, :cond_109

    .line 325
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 329
    :goto_80
    if-eqz v2, :cond_f1

    .line 330
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v1, v0

    const-string v3, "name"

    aput-object v3, v1, v8

    const-string v3, "Title"

    aput-object v3, v1, v9

    const-string v3, "title"

    aput-object v3, v1, v10

    const-string v3, "Caption"

    aput-object v3, v1, v11

    const/4 v3, 0x5

    const-string v4, "caption"

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->first(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "Category"

    aput-object v4, v1, v0

    const-string v4, "category"

    aput-object v4, v1, v8

    const-string v4, "Group"

    aput-object v4, v1, v9

    const-string v4, "group"

    aput-object v4, v1, v10

    const-string v4, "Catalog"

    aput-object v4, v1, v11

    const/4 v4, 0x5

    const-string v5, "catalog"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "Type"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "type"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "Body"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "body"

    aput-object v5, v1, v4

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->first(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    if-eqz v3, :cond_f1

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->meta:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    .line 334
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->meta:Ljava/util/Map;

    new-array v5, v9, [Ljava/lang/String;

    aput-object v3, v5, v0

    if-eqz v1, :cond_10d

    move-object v0, v1

    :goto_ec
    aput-object v0, v5, v8

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_f1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 338
    :goto_f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->walk(Ljava/lang/Object;)V

    goto :goto_f5

    .line 321
    :cond_109
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_63

    .line 334
    :cond_10d
    const/4 v0, 0x0

    goto :goto_ec

    .line 343
    :cond_10f
    return-void

    :cond_110
    move-object v2, v1

    goto/16 :goto_80
.end method
