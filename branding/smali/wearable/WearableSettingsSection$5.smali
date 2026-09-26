.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
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

    .line 205
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 208
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;->val$a:Landroid/app/Activity;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTest(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$300(Landroid/app/Activity;)V

    .line 209
    return-void
.end method
