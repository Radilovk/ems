.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HowInfo"
.end annotation


# instance fields
.field private final id:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1264
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->id:I

    .line 1265
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1269
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->id:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    .line 1270
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v1

    .line 1271
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$HowInfo;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->name(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->tag(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->how(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->muscle(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->latin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->rhythm(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \u00b7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1272
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->course(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->evidenceText(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->sheet(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    return-void
.end method
