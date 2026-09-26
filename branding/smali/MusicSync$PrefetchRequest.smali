.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;
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
    name = "PrefetchRequest"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 3

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;->activity:Landroid/app/Activity;

    .line 1170
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;->uri:Landroid/net/Uri;

    .line 1171
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1175
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchNext(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1176
    return-void
.end method
