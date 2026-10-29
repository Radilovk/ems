.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Find"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2160
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2161
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 2165
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    .line 2167
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-nez v1, :cond_f

    .line 2206
    :goto_e
    return-void

    .line 2170
    :cond_f
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2171
    const-string v3, "no permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_33

    .line 2172
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x5c41

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_e

    .line 2176
    :cond_33
    const-string v3, "switched off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2178
    :try_start_3b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_45} :catch_46

    goto :goto_e

    .line 2180
    :catch_46
    move-exception v0

    goto :goto_e

    .line 2184
    :cond_48
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby()Ljava/util/List;

    move-result-object v5

    .line 2185
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2186
    const-string v0, "\u041a\u043e\u0439 \u0435 \u043a\u0430\u043d\u0442\u0430\u0440\u044a\u0442?"

    const-string v1, "Which one is the scale?"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2187
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 2188
    const-string v0, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043d\u0435 \u0447\u0443\u0432\u0430 \u043d\u0438\u0449\u043e \u043f\u043e Bluetooth. \u0421\u0442\u044a\u043f\u0435\u0442\u0435 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430, \u0437\u0430 \u0434\u0430 \u0441\u0435 \u0441\u044a\u0431\u0443\u0434\u0438, \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0435\u0442\u0435 \u201e\u041e\u0431\u043d\u043e\u0432\u0438\u201c."

    const-string v1, "The tablet hears nothing over Bluetooth. Step on the scale to wake it, then tap Refresh."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2203
    :goto_71
    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u0438"

    const-string v1, "Refresh"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;Landroid/view/View;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2204
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2205
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_e

    .line 2191
    :cond_92
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 2192
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    move v1, v2

    .line 2193
    :goto_9f
    array-length v0, v7

    if-ge v1, v0, :cond_127

    .line 2194
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;

    .line 2195
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->mac:Ljava/lang/String;

    aput-object v3, v8, v1

    .line 2196
    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->rssi:I

    const/16 v4, -0x3c

    if-le v3, v4, :cond_103

    const-string v3, "\u0441\u044a\u0432\u0441\u0435\u043c \u0431\u043b\u0438\u0437\u043e"

    const-string v4, "very close"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2198
    :goto_ba
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->ffb0:Z

    if-eqz v4, :cond_11b

    const-string v4, "\u2605 "

    :goto_c5
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->name:Ljava/lang/String;

    if-eqz v4, :cond_11e

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->name:Ljava/lang/String;

    :goto_cf
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "  \u00b7  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \u00b7  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->mac:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->mac:Ljava/lang/String;

    .line 2199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    .line 2193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9f

    .line 2196
    :cond_103
    iget v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->rssi:I

    const/16 v4, -0x4b

    if-le v3, v4, :cond_112

    .line 2197
    const-string v3, "\u0431\u043b\u0438\u0437\u043e"

    const-string v4, "close"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_ba

    :cond_112
    const-string v3, "\u0434\u0430\u043b\u0435\u0447"

    const-string v4, "far"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_ba

    .line 2198
    :cond_11b
    const-string v4, ""

    goto :goto_c5

    :cond_11e
    const-string v4, "\u0431\u0435\u0437 \u0438\u043c\u0435"

    const-string v10, "no name"

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_cf

    .line 2201
    :cond_127
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-direct {v0, v1, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;[Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_71
.end method
