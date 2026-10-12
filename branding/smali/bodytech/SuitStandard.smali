.class public final Lcom/isaigu/gymapp/bodytech/SuitStandard;
.super Ljava/lang/Object;
.source "SuitStandard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;,
        Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;
    }
.end annotation


# static fields
.field static final BG:[Ljava/lang/String;

.field static final EN:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "xems_suit_standard"

.field private static final TAG:Ljava/lang/String; = "xems_suit_standard"

.field public static final XBODY:I = 0x1

.field static final XBODY_SRC:[I

.field public static final XEMS:I

.field private static app:Landroid/content/Context;

.field private static column:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u0413\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v5

    const-string v1, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v6

    const-string v1, "\u041f\u0440\u0430\u0441\u0435\u0446"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0413\u043b\u0443\u0442\u0435\u0443\u0441"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->BG:[Ljava/lang/String;

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Chest"

    aput-object v1, v0, v4

    const-string v1, "Abs"

    aput-object v1, v0, v5

    const-string v1, "Front thigh"

    aput-object v1, v0, v6

    const-string v1, "Calf"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Arms"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Traps"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Back"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Lower back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Back thigh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->EN:[Ljava/lang/String;

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    return-void

    :array_76
    .array-data 4
        0x3
        0x9
        0x2
        0x0
        0x1
        0x7
        0x8
        0x6
        0x5
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static device(Lcom/isaigu/gymapp/bean/DeviceBean;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 143
    :try_start_1
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->column:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->column:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    move-object v2, v0

    .line 144
    :goto_e
    if-nez v2, :cond_13

    .line 150
    :goto_10
    return-void

    :cond_11
    move-object v2, v1

    .line 143
    goto :goto_e

    .line 145
    :cond_13
    if-eqz p0, :cond_24

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    :goto_17
    iput-object v0, v2, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    .line 146
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->render()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 147
    :catch_1d
    move-exception v0

    .line 148
    const-string v1, "SuitStandard.device"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_24
    move-object v0, v1

    .line 145
    goto :goto_17
.end method

.method public static get(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_a

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 90
    :cond_b
    :goto_b
    return v0

    .line 89
    :cond_c
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_1d

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_b

    :cond_1d
    move v0, v1

    goto :goto_b
.end method

.method static key(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "std_"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    :goto_8
    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 81
    const/16 v3, 0x30

    if-lt v2, v3, :cond_20

    const/16 v3, 0x39

    if-le v2, v3, :cond_28

    :cond_20
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2b

    const/16 v3, 0x46

    if-gt v2, v3, :cond_2b

    :cond_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 83
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static picker(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/isaigu/gymapp/bodytech/SuitStandard;->column:Ljava/lang/ref/WeakReference;

    .line 118
    if-eqz p0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v2

    if-nez v2, :cond_d

    .line 138
    :cond_c
    :goto_c
    return-void

    .line 119
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "devicelistview"

    const-string v5, "id"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 121
    if-eqz v2, :cond_27

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_27
    move-object v3, v1

    .line 122
    :goto_28
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_51

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 124
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_90

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-nez v2, :cond_90

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    .line 125
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v5, 0x3

    if-lt v2, v5, :cond_90

    .line 128
    :cond_51
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 130
    const-string v2, "xems_suit_standard"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_6c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 132
    :cond_6c
    new-instance v2, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    invoke-direct {v2, v4, v3}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    iget-object v4, v2, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->params(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/isaigu/gymapp/bodytech/SuitStandard;->column:Ljava/lang/ref/WeakReference;
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_87} :catch_88

    goto :goto_c

    .line 135
    :catch_88
    move-exception v1

    .line 136
    const-string v2, "SuitStandard.picker"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_90
    move-object v3, v1

    .line 127
    goto :goto_28
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    if-nez v0, :cond_14

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_12
    sput-object p0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    .line 67
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    if-nez v0, :cond_37

    .line 69
    :try_start_18
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    instance-of v2, v0, Landroid/content/Context;

    if-eqz v2, :cond_37

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_37} :catch_46

    .line 74
    :cond_37
    :goto_37
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    if-nez v0, :cond_3d

    move-object v0, v1

    :goto_3c
    return-object v0

    :cond_3d
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    const-string v1, "xems_suit_standard"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_3c

    .line 71
    :catch_46
    move-exception v0

    goto :goto_37
.end method

.method static set(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_9

    if-nez p1, :cond_a

    .line 97
    :cond_9
    :goto_9
    return-void

    .line 96
    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p2, v0, :cond_1c

    :goto_14
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static toSuit(Lcom/clj/fastble/data/BleDevice;B[B)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    .line 102
    if-ne p1, v3, :cond_f

    if-eqz p0, :cond_f

    if-eqz p2, :cond_f

    :try_start_a
    array-length v1, p2

    const/16 v2, 0xb

    if-ge v1, v2, :cond_10

    .line 110
    :cond_f
    :goto_f
    return-void

    .line 103
    :cond_10
    invoke-virtual {p0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->get(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_f

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytech(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 104
    const/16 v1, 0xa

    new-array v1, v1, [B

    .line 105
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p2, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :goto_2b
    if-ge v0, v5, :cond_f

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    aget v3, v3, v0

    aget-byte v3, v1, v3

    aput-byte v3, p2, v2
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_37} :catch_3a

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 107
    :catch_3a
    move-exception v0

    .line 108
    const-string v1, "SuitStandard.toSuit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static unlocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 57
    :try_start_1
    const-string v1, "com.isaigu.gymapp.widget.XemsLocalStore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAdminSession"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result v0

    .line 61
    :goto_1e
    return v0

    .line 60
    :catch_1f
    move-exception v1

    goto :goto_1e
.end method
