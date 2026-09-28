.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Rebuild"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;->a:Landroid/app/Activity;

    .line 444
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;->root:Landroid/view/View;

    .line 445
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$500(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 453
    :goto_7
    return-void

    .line 451
    :catch_8
    move-exception v0

    goto :goto_7
.end method
