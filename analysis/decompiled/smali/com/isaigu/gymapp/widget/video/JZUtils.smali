.class public Lcom/isaigu/gymapp/widget/video/JZUtils;
.super Ljava/lang/Object;
.source "JZUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JiaoZiVideoPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string v1, "JZVD_PROGRESS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "spn":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :goto_0
    return-void

    .line 143
    .end local v0    # "spn":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "JZVD_PROGRESS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .restart local v0    # "spn":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 170
    aget-object v0, p0, v1

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 171
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    :cond_0
    return v1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_0

    move-object p0, v0

    .line 86
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 82
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    goto :goto_0

    .line 83
    :cond_1
    instance-of v1, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 84
    check-cast p0, Landroid/support/v7/view/ContextThemeWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    move-object p0, v0

    .line 86
    goto :goto_0
.end method

.method public static getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 150
    const/4 v1, 0x0

    aget-object v0, p0, v1

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 151
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getValueFromLinkedMap(Ljava/util/LinkedHashMap;I)Ljava/lang/Object;

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 178
    const/4 v4, 0x0

    aget-object v3, p0, v4

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 179
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 180
    .local v0, "currentIndex":I
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 182
    .local v2, "key":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .end local v2    # "key":Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 185
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 186
    goto :goto_0

    .line 187
    .end local v2    # "key":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getSavedProgress(Landroid/content/Context;Ljava/lang/Object;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v2, 0x0

    .line 125
    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->SAVE_PROGRESS:Z

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-wide v2

    .line 126
    :cond_0
    const-string v1, "JZVD_PROGRESS"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "spn":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newVersion:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getValueFromLinkedMap(Ljava/util/LinkedHashMap;I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "currentIndex":I
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "key":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 162
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 166
    .end local v2    # "key":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 164
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 165
    goto :goto_0

    .line 166
    .end local v2    # "key":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 50
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/Object;
    .param p2, "progress"    # J

    .prologue
    .line 113
    sget-boolean v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->SAVE_PROGRESS:Z

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v2, "JiaoZiVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-wide/16 v2, 0x1388

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 116
    const-wide/16 p2, 0x0

    .line 118
    :cond_1
    const-string v2, "JZVD_PROGRESS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    .local v1, "spn":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    if-nez p0, :cond_0

    move-object p0, v0

    .line 70
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 64
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 65
    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    .line 66
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 67
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    move-object p0, v0

    .line 70
    goto :goto_0
.end method

.method public static setRequestedOrientation(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    .line 90
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->setRequestedOrientation(I)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static stringForTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "timeMs"    # J

    .prologue
    .line 27
    const-wide/16 v8, 0x0

    cmp-long v5, p0, v8

    if-lez v5, :cond_0

    const-wide/32 v8, 0x5265c00

    cmp-long v5, p0, v8

    if-ltz v5, :cond_1

    .line 28
    :cond_0
    const-string v5, "00:00"

    .line 39
    :goto_0
    return-object v5

    .line 30
    :cond_1
    const-wide/16 v8, 0x3e8

    div-long v6, p0, v8

    .line 31
    .local v6, "totalSeconds":J
    const-wide/16 v8, 0x3c

    rem-long v8, v6, v8

    long-to-int v3, v8

    .line 32
    .local v3, "seconds":I
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v2, v8

    .line 33
    .local v2, "minutes":I
    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v0, v8

    .line 34
    .local v0, "hours":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 36
    .local v1, "mFormatter":Ljava/util/Formatter;
    if-lez v0, :cond_2

    .line 37
    const-string v5, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 39
    :cond_2
    const-string v5, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
