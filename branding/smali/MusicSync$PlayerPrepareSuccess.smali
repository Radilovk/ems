.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerPrepareSuccess"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private final token:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;I)V
    .registers 5

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->activity:Landroid/app/Activity;

    .line 1132
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->uri:Landroid/net/Uri;

    .line 1133
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1134
    iput p4, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->token:I

    .line 1135
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1139
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->token:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1140
    return-void

    .line 1142
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    .line 1143
    return-void
.end method
