.class public final Lcom/isaigu/gymapp/wearable/MasterKeys;
.super Ljava/lang/Object;
.source "MasterKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/MasterKeys$Key;
    }
.end annotation


# static fields
.field static final AFTER_MS:J = 0xb4L

.field static final GREEN:I = -0xbc5fb9

.field static final RED:I = -0x1ac6cb

.field private static done:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static idAdd:I

.field private static idMinus:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 32
    if-eqz p0, :cond_f

    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/MasterKeys;->done:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/isaigu/gymapp/wearable/MasterKeys;->done:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_10

    .line 50
    :cond_f
    :goto_f
    return-void

    .line 35
    :cond_10
    sget v1, Lcom/isaigu/gymapp/wearable/MasterKeys;->idAdd:I

    if-nez v1, :cond_38

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "allAdd"

    const-string v4, "id"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/MasterKeys;->idAdd:I

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "allminus"

    const-string v4, "id"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/MasterKeys;->idMinus:I

    .line 40
    :cond_38
    sget v1, Lcom/isaigu/gymapp/wearable/MasterKeys;->idAdd:I

    if-eqz v1, :cond_7a

    sget v1, Lcom/isaigu/gymapp/wearable/MasterKeys;->idAdd:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    :goto_42
    sget v2, Lcom/isaigu/gymapp/wearable/MasterKeys;->idMinus:I

    if-eqz v2, :cond_4c

    sget v0, Lcom/isaigu/gymapp/wearable/MasterKeys;->idMinus:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    :cond_4c
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/MasterKeys;->look(Landroid/view/View;Z)V

    .line 43
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/MasterKeys;->look(Landroid/view/View;Z)V

    .line 44
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/MasterKeys;->done:Ljava/lang/ref/WeakReference;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5f} :catch_60

    goto :goto_f

    .line 47
    :catch_60
    move-exception v0

    .line 48
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_7a
    move-object v1, v0

    .line 40
    goto :goto_42
.end method

.method static look(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 53
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;

    if-eqz v0, :cond_b

    .line 60
    :cond_a
    :goto_a
    return-void

    .line 56
    :cond_b
    new-instance v0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1, p1}, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;-><init>(FZ)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 58
    check-cast p0, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method
