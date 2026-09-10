.class public Lcom/isaigu/gymapp/widget/video/JZUtils;
.super Ljava/lang/Object;
.source "JZUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JiaoZiVideoPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    const-string v1, "JZVD_PROGRESS"

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "spn":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    .end local v0    # "spn":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .restart local v0    # "spn":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    .end local v0    # "spn":Landroid/content/SharedPreferences;
    :goto_0
    return-void
.end method

.method public static dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 171
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 174
    :cond_0
    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

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

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    instance-of v1, p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 82
    move-object v0, p0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    return-object v0

    .line 83
    :cond_1
    instance-of v1, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    return-object v0

    .line 86
    :cond_2
    return-object v0
.end method

.method public static getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .line 150
    const/4 v0, 0x0

    aget-object v0, p0, v0

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

    return-object v1

    .line 154
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .line 178
    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 179
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 180
    .local v1, "currentIndex":I
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 182
    .local v3, "key":Ljava/lang/Object;
    if-ne v1, p1, :cond_0

    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 185
    :cond_0
    nop

    .end local v3    # "key":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 186
    goto :goto_0

    .line 187
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getSavedProgress(Landroid/content/Context;Ljava/lang/Object;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/Object;

    .line 125
    sget-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->SAVE_PROGRESS:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    const-string v3, "JZVD_PROGRESS"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "spn":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getValueFromLinkedMap(Ljava/util/LinkedHashMap;I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 158
    .local p0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "currentIndex":I
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "key":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 162
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 164
    :cond_0
    nop

    .end local v2    # "key":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 165
    goto :goto_0

    .line 166
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/Object;
    .param p2, "progress"    # J

    .line 113
    sget-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->SAVE_PROGRESS:Z

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-wide/16 v0, 0x1388

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 116
    const-wide/16 p2, 0x0

    .line 118
    :cond_1
    const/4 v0, 0x0

    const-string v1, "JZVD_PROGRESS"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "spn":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 121
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 66
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 70
    :cond_2
    return-object v0
.end method

.method public static setRequestedOrientation(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .line 90
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 97
    :goto_0
    return-void
.end method

.method public static stringForTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "timeMs"    # J

    .line 27
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    const-wide/32 v0, 0x5265c00

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 31
    .local v0, "totalSeconds":J
    const-wide/16 v2, 0x3c

    rem-long v4, v0, v2

    long-to-int v5, v4

    .line 32
    .local v5, "seconds":I
    div-long v6, v0, v2

    rem-long/2addr v6, v2

    long-to-int v2, v6

    .line 33
    .local v2, "minutes":I
    const-wide/16 v3, 0xe10

    div-long v3, v0, v3

    long-to-int v4, v3

    .line 34
    .local v4, "hours":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 36
    .local v6, "mFormatter":Ljava/util/Formatter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-lez v4, :cond_1

    .line 37
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v9

    const-string v7, "%d:%02d:%02d"

    invoke-virtual {v6, v7, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 39
    :cond_1
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    const-string v7, "%02d:%02d"

    invoke-virtual {v6, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 28
    .end local v0    # "totalSeconds":J
    .end local v2    # "minutes":I
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "hours":I
    .end local v5    # "seconds":I
    .end local v6    # "mFormatter":Ljava/util/Formatter;
    :cond_2
    :goto_0
    const-string v0, "00:00"

    return-object v0
.end method
