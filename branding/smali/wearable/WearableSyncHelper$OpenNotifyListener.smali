.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenNotifyListener;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenNotifyListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 827
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$500(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 828
    if-eqz p1, :cond_9

    .line 829
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->openNotifyApp(Landroid/content/Context;)V

    .line 831
    :cond_9
    return-void
.end method
