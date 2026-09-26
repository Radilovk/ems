.class final Lcom/isaigu/gymapp/wearable/WearableLivePanel$ShareListener;
.super Ljava/lang/Object;
.source "WearableLivePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableLivePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShareListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V
    .registers 2

    .line 301
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$ShareListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->shareRecording(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$700(Landroid/app/Activity;)V

    .line 305
    return-void
.end method
