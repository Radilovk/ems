.class Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;
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


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 112
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->dismiss()V

    .line 113
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableHrPanel$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->show(Landroid/app/Activity;)V

    .line 114
    return-void
.end method
