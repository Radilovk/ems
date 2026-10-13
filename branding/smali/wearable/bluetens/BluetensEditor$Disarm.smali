.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;
.super Ljava/lang/Object;
.source "BluetensEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Disarm"
.end annotation


# instance fields
.field final e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V
    .registers 2

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    .line 381
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->deleteArmed:Z

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete:Landroid/widget/TextView;

    const-string v1, "\u0418\u0437\u0442\u0440\u0438\u0439 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v2, "Delete program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method
