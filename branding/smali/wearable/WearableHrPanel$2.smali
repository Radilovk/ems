.class Lcom/isaigu/gymapp/wearable/WearableHrPanel$2;
.super Ljava/lang/Object;
.source "WearableHrPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableHrPanel;->showImpl(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->dismiss()V

    .line 123
    return-void
.end method
