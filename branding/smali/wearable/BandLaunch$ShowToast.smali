.class final Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;
.super Ljava/lang/Object;
.source "BandLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShowToast"
.end annotation


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;->text:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 100
    # getter for: Lcom/isaigu/gymapp/wearable/BandLaunch;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandLaunch;->access$200()Landroid/content/Context;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_10

    .line 102
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandLaunch$ShowToast;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    :cond_10
    return-void
.end method
