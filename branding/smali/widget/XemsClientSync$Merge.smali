.class final Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;
.super Ljava/lang/Object;
.source "XemsClientSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsClientSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merge"
.end annotation


# instance fields
.field final items:Lorg/json/JSONArray;

.field final more:Z


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Z)V
    .registers 3

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;->items:Lorg/json/JSONArray;

    .line 206
    iput-boolean p2, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;->more:Z

    .line 207
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 211
    .line 213
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "since"

    invoke-interface {v0, v2, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move v0, v1

    move v4, v1

    move v5, v1

    .line 214
    :goto_15
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;->items:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_65

    .line 215
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;->items:Lorg/json/JSONArray;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 216
    if-nez v7, :cond_28

    .line 214
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 220
    :cond_28
    :try_start_28
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/content/Context;

    move-result-object v6

    const-string v8, "p"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsClientSync;->merge(Landroid/content/Context;Lorg/json/JSONObject;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_35} :catch_4b

    move-result v6

    .line 221
    if-ne v6, v11, :cond_45

    .line 222
    add-int/lit8 v5, v5, 0x1

    .line 229
    :cond_3a
    :goto_3a
    const-string v6, "t"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_25

    .line 223
    :cond_45
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3a

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 226
    :catch_4b
    move-exception v6

    .line 227
    const-string v8, "xems_sync"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "merge: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 231
    :cond_65
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "since"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "total"

    const-string v6, "total"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    add-int v0, v5, v4

    if-lez v0, :cond_f5

    .line 235
    :try_start_8c
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435: "

    const-string v3, "Client profiles: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    if-lez v5, :cond_100

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043d\u043e\u0432\u0438"

    const-string v6, " new"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_bc
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    if-lez v5, :cond_103

    if-lez v4, :cond_103

    const-string v0, ", "

    :goto_c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    if-lez v4, :cond_106

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043e\u0431\u043d\u043e\u0432\u0435\u043d\u0438"

    const-string v4, " updated"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 235
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_f5} :catch_109

    .line 242
    :cond_f5
    :goto_f5
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;->more:Z

    if-eqz v0, :cond_ff

    .line 243
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$502(J)J

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->poke()V

    .line 246
    :cond_ff
    return-void

    .line 236
    :cond_100
    :try_start_100
    const-string v0, ""

    goto :goto_bc

    .line 237
    :cond_103
    const-string v0, ""

    goto :goto_c6

    .line 238
    :cond_106
    const-string v0, ""
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_108} :catch_109

    goto :goto_e5

    .line 239
    :catch_109
    move-exception v0

    goto :goto_f5
.end method
