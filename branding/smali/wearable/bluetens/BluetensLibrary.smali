.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;
.super Ljava/lang/Object;
.source "BluetensLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;
    }
.end annotation


# static fields
.field static final ASSET:Ljava/lang/String; = "xems/bluetens.json"

.field static final FILE:Ljava/lang/String; = "XNAT"

.field private static cache:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized load(Landroid/content/Context;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
    .registers 7

    .prologue
    .line 99
    const-class v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->cache:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    if-eqz v0, :cond_b

    .line 100
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->cache:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4e

    .line 118
    :goto_9
    monitor-exit v1

    return-object v0

    .line 103
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "xems/bluetens.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_2e
    .catchall {:try_start_b .. :try_end_14} :catchall_4e

    move-result-object v2

    .line 105
    :try_start_15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 108
    :goto_1e
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_39

    .line 109
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_29

    goto :goto_1e

    .line 113
    :catchall_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 114
    throw v0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2e} :catch_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_4e

    .line 115
    :catch_2e
    move-exception v0

    .line 116
    :try_start_2f
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->cache:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    .line 118
    :goto_36
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->cache:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_4e

    goto :goto_9

    .line 111
    :cond_39
    :try_start_39
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->cache:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_29

    .line 113
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_2e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_36

    .line 99
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 123
    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;-><init>()V

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v2, "parts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->parts:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->triples(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 126
    const-string v2, "cats"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->cats:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->triples(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 127
    const-string v2, "masters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 128
    const-string v2, "programs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v0, v1

    .line 129
    :goto_2f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_109

    .line 130
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 131
    new-instance v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;-><init>()V

    .line 132
    const-string v2, "f"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->file:Ljava/lang/String;

    .line 133
    const-string v2, "c"

    const-string v8, ""

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->cat:Ljava/lang/String;

    .line 134
    const-string v2, "m"

    const-string v8, ""

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->master:Ljava/lang/String;

    .line 135
    const-string v2, "mode"

    const-string v8, ""

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->mode:Ljava/lang/String;

    .line 136
    const-string v2, "n"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->nameBg:Ljava/lang/String;

    .line 138
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-le v8, v11, :cond_9d

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7a
    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->nameEn:Ljava/lang/String;

    .line 139
    const-string v2, "b"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 140
    if-eqz v8, :cond_a0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_88
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    move v2, v1

    .line 141
    :goto_8d
    iget-object v9, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_a2

    .line 142
    iget-object v9, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 138
    :cond_9d
    iget-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->nameBg:Ljava/lang/String;

    goto :goto_7a

    :cond_a0
    move v2, v1

    .line 140
    goto :goto_88

    .line 144
    :cond_a2
    const-string v2, "lok"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->lok:Ljava/lang/String;

    .line 146
    :try_start_aa
    iget-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->lok:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->stats(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_b3} :catch_10a

    .line 150
    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->progs:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    if-eqz v4, :cond_fe

    iget-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->master:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fe

    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->desc:Ljava/util/Map;

    iget-object v6, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->master:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 152
    iget-object v2, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->master:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_102

    const-string v6, "d"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 154
    :goto_da
    if-eqz v2, :cond_fe

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_fe

    .line 155
    iget-object v6, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->desc:Ljava/util/Map;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->master:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-le v9, v11, :cond_104

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_f9
    aput-object v2, v8, v11

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_fe
    :goto_fe
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    .line 153
    :cond_102
    const/4 v2, 0x0

    goto :goto_da

    .line 155
    :cond_104
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f9

    .line 159
    :cond_109
    return-object v3

    .line 147
    :catch_10a
    move-exception v2

    goto :goto_fe
.end method

.method public static placement(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    const-string v0, "shoulder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 191
    if-eqz p1, :cond_d

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u0434\u0435\u043b\u0442\u043e\u0432\u0438\u0434\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b \u2014 \u043e\u0442\u043f\u0440\u0435\u0434 \u0438 \u043e\u0442\u0437\u0430\u0434 \u043d\u0430 \u0440\u0430\u043c\u043e\u0442\u043e."

    .line 228
    :goto_c
    return-object v0

    .line 191
    :cond_d
    const-string v0, "On the deltoid \u2014 front and back of the shoulder."

    goto :goto_c

    .line 192
    :cond_10
    const-string v0, "upper_back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 193
    if-eqz p1, :cond_1d

    const-string v0, "\u041c\u0435\u0436\u0434\u0443 \u043b\u043e\u043f\u0430\u0442\u043a\u0438\u0442\u0435 \u0438\u043b\u0438 \u0432\u044a\u0440\u0445\u0443 \u0442\u0440\u0430\u043f\u0435\u0446\u0430, \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u0447\u043d\u0438\u044f \u0441\u0442\u044a\u043b\u0431."

    goto :goto_c

    .line 194
    :cond_1d
    const-string v0, "Between the shoulder blades or on the trapezius, either side of the spine."

    goto :goto_c

    .line 195
    :cond_20
    const-string v0, "pectorals"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 196
    if-eqz p1, :cond_2d

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u0433\u0440\u044a\u0434\u043d\u0438\u044f \u043c\u0443\u0441\u043a\u0443\u043b, \u043f\u043e\u0434 \u043a\u043b\u044e\u0447\u0438\u0446\u0430\u0442\u0430 \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u043f\u0440\u0438 \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440."

    goto :goto_c

    :cond_2d
    const-string v0, "On the chest muscle below the collarbone \u2014 never with a pacemaker."

    goto :goto_c

    .line 197
    :cond_30
    const-string v0, "upper_arm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 198
    if-eqz p1, :cond_3d

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u0431\u0438\u0446\u0435\u043f\u0441\u0430 \u0438\u043b\u0438 \u0442\u0440\u0438\u0446\u0435\u043f\u0441\u0430, \u043f\u043e \u0434\u044a\u043b\u0436\u0438\u043d\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430."

    goto :goto_c

    :cond_3d
    const-string v0, "On the biceps or triceps, along the muscle."

    goto :goto_c

    .line 199
    :cond_40
    const-string v0, "elbow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 200
    if-eqz p1, :cond_4d

    const-string v0, "\u041e\u043a\u043e\u043b\u043e \u043b\u0430\u043a\u044a\u0442\u044f \u2014 \u043d\u0430\u0434 \u0438 \u043f\u043e\u0434 \u0431\u043e\u043b\u0435\u0437\u043d\u0435\u043d\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e, \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u043a\u043e\u0441\u0442\u0442\u0430."

    goto :goto_c

    :cond_4d
    const-string v0, "Around the elbow \u2014 above and below the sore spot, not on the bone."

    goto :goto_c

    .line 201
    :cond_50
    const-string v0, "forearm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 202
    if-eqz p1, :cond_5d

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u043f\u0440\u0435\u0434\u043c\u0438\u0448\u043d\u0438\u0446\u0430\u0442\u0430, \u043f\u043e \u0434\u044a\u043b\u0436\u0438\u043d\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430."

    goto :goto_c

    :cond_5d
    const-string v0, "On the forearm, along the muscle."

    goto :goto_c

    .line 203
    :cond_60
    const-string v0, "wrist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 204
    if-eqz p1, :cond_6d

    const-string v0, "\u041e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430, \u0431\u0435\u0437 \u0434\u0430 \u0435 \u0432\u044a\u0440\u0445\u0443 \u043a\u043e\u0441\u0442\u0442\u0430."

    goto :goto_c

    :cond_6d
    const-string v0, "Either side of the wrist, off the bone."

    goto :goto_c

    .line 205
    :cond_70
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 206
    if-eqz p1, :cond_7d

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u0448\u0438\u0440\u043e\u043a\u0438\u044f \u0433\u0440\u044a\u0431\u0435\u043d \u043c\u0443\u0441\u043a\u0443\u043b, \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0433\u044a\u0440\u0431\u0430."

    goto :goto_c

    :cond_7d
    const-string v0, "On the broad back muscle, on the side of the back."

    goto :goto_c

    .line 207
    :cond_80
    const-string v0, "abdomen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 208
    if-eqz p1, :cond_8d

    const-string v0, "\u041e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u043f\u044a\u043f\u0430, \u043d\u0430 3\u20134 \u0441\u043c \u043e\u0442 \u043d\u0435\u0433\u043e. \u041d\u0435 \u043f\u0440\u0438 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442."

    goto :goto_c

    :cond_8d
    const-string v0, "Beside the navel, 3\u20134 cm away. Not in pregnancy."

    goto/16 :goto_c

    .line 209
    :cond_91
    const-string v0, "lower_back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 210
    if-eqz p1, :cond_9f

    const-string v0, "\u041d\u0430 \u043a\u0440\u044a\u0441\u0442\u0430, \u043e\u0442 \u0434\u0432\u0435\u0442\u0435 \u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u0447\u043d\u0438\u044f \u0441\u0442\u044a\u043b\u0431, \u043d\u0430 \u0435\u0434\u043d\u0430 \u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430."

    goto/16 :goto_c

    .line 211
    :cond_9f
    const-string v0, "On the lower back, either side of the spine, at the same height."

    goto/16 :goto_c

    .line 212
    :cond_a3
    const-string v0, "buttock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 213
    if-eqz p1, :cond_b1

    const-string v0, "\u0412 \u0433\u043e\u0440\u043d\u0430\u0442\u0430 \u0432\u044a\u043d\u0448\u043d\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e, \u0435\u0434\u0438\u043d \u043d\u0430\u0434 \u0434\u0440\u0443\u0433."

    goto/16 :goto_c

    :cond_b1
    const-string v0, "On the upper outer glute, one above the other."

    goto/16 :goto_c

    .line 214
    :cond_b5
    const-string v0, "perineum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 215
    if-eqz p1, :cond_c3

    const-string v0, "\u041d\u0438\u0441\u043a\u043e \u043d\u0430 \u043a\u0440\u044a\u0441\u0442\u0430 \u043d\u0430\u0434 \u0441\u0430\u043a\u0440\u0443\u043c\u0430 \u0438\u043b\u0438 \u043f\u043e \u0443\u043a\u0430\u0437\u0430\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0441\u043f\u0435\u0446\u0438\u0430\u043b\u0438\u0441\u0442."

    goto/16 :goto_c

    :cond_c3
    const-string v0, "Low on the back over the sacrum, or as a specialist shows."

    goto/16 :goto_c

    .line 216
    :cond_c7
    const-string v0, "thigh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 217
    if-eqz p1, :cond_d5

    const-string v0, "\u041e\u0442\u043f\u0440\u0435\u0434 \u043d\u0430 \u0431\u0435\u0434\u0440\u043e\u0442\u043e: \u0435\u0434\u0438\u043d \u043d\u0430\u0434 \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e, \u0434\u0440\u0443\u0433\u0438\u044f\u0442 \u043f\u043e \u0441\u0440\u0435\u0434\u0430\u0442\u0430 \u043d\u0430 \u0431\u0435\u0434\u0440\u043e\u0442\u043e."

    goto/16 :goto_c

    .line 218
    :cond_d5
    const-string v0, "Front of the thigh: one above the knee, the other mid-thigh."

    goto/16 :goto_c

    .line 219
    :cond_d9
    const-string v0, "knee"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 220
    if-eqz p1, :cond_e7

    const-string v0, "\u041e\u043a\u043e\u043b\u043e \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e \u2014 \u043d\u0430\u0434 \u0438 \u043f\u043e\u0434 \u043a\u0430\u043f\u0430\u0447\u043a\u0430\u0442\u0430, \u043d\u0438\u043a\u043e\u0433\u0430 \u0432\u044a\u0440\u0445\u0443 \u043d\u0435\u044f."

    goto/16 :goto_c

    :cond_e7
    const-string v0, "Around the knee \u2014 above and below the kneecap, never on it."

    goto/16 :goto_c

    .line 221
    :cond_eb
    const-string v0, "calf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 222
    if-eqz p1, :cond_f9

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u043d\u0430\u0439-\u043f\u043b\u044a\u0442\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u043f\u0440\u0430\u0441\u0435\u0446\u0430, \u0435\u0434\u0438\u043d \u043d\u0430\u0434 \u0434\u0440\u0443\u0433."

    goto/16 :goto_c

    :cond_f9
    const-string v0, "On the thickest part of the calf, one above the other."

    goto/16 :goto_c

    .line 223
    :cond_fd
    const-string v0, "ankle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 224
    if-eqz p1, :cond_10b

    const-string v0, "\u041e\u043a\u043e\u043b\u043e \u0433\u043b\u0435\u0437\u0435\u043d\u0430 \u2014 \u043e\u0442\u043f\u0440\u0435\u0434 \u0438 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438, \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u043a\u043e\u0441\u0442\u0442\u0430."

    goto/16 :goto_c

    :cond_10b
    const-string v0, "Around the ankle \u2014 front and side, off the bone."

    goto/16 :goto_c

    .line 225
    :cond_10f
    const-string v0, "foot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 226
    if-eqz p1, :cond_11d

    const-string v0, "\u0412\u044a\u0440\u0445\u0443 \u0445\u043e\u0434\u0438\u043b\u043e\u0442\u043e \u2014 \u043a\u044a\u043c \u043f\u0435\u0442\u0430\u0442\u0430 \u0438 \u043a\u044a\u043c \u043f\u0440\u0435\u0434\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442. \u0421\u0435\u0434\u043d\u0430\u043b."

    goto/16 :goto_c

    :cond_11d
    const-string v0, "On the sole \u2014 toward the heel and the front. Seated."

    goto/16 :goto_c

    .line 228
    :cond_121
    const-string v0, ""

    goto/16 :goto_c
.end method

.method static stats(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;)V
    .registers 13

    .prologue
    const v5, 0x7fffffff

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->secs:I

    .line 175
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v5

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    .line 176
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 177
    const/4 v8, 0x1

    iget v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    int-to-float v9, v9

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 178
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 179
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 180
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_30

    .line 183
    :cond_5a
    if-ne v4, v5, :cond_63

    :goto_5c
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzLo:I

    .line 184
    iput v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzHi:I

    .line 185
    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->usHi:I

    .line 186
    return-void

    :cond_63
    move v2, v4

    .line 183
    goto :goto_5c
.end method

.method static triples(Lorg/json/JSONArray;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<[",
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
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 163
    if-nez p0, :cond_6

    .line 170
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 166
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 167
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 168
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v6, :cond_32

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2a
    aput-object v2, v3, v6

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 168
    :cond_32
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method
