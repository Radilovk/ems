.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Picked"
.end annotation


# instance fields
.field final macs:[Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2214
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2215
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->macs:[Ljava/lang/String;

    .line 2216
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_35

    if-ltz p2, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->macs:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_35

    .line 2221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->macs:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pick(Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->find:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Picked;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u043f\u043e\u043c\u043d\u0438\u0445 \u0433\u043e. \u0421\u0442\u044a\u043f\u0435\u0442\u0435 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430."

    const-string v2, "Saved. Step on the scale."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2224
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2226
    :cond_35
    return-void
.end method
