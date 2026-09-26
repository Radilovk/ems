.class final Lcom/isaigu/gymapp/wearable/WearableLivePanel$CloseListener;
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
    name = "CloseListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V
    .registers 2

    .line 324
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$CloseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 327
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dismiss()V

    .line 328
    return-void
.end method
