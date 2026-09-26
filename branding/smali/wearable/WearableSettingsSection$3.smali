.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;
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

    .line 129
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 132
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->showSaved(Landroid/app/Activity;)V

    .line 133
    return-void
.end method
