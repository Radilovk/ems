.class public Ljavax/mail/FolderNotFoundException;
.super Ljavax/mail/MessagingException;
.source "FolderNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x68f0e358302dafbL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/Folder;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "folder"    # Ljavax/mail/Folder;

    .line 111
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 112
    iput-object p2, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;

    .line 71
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 72
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "s"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 99
    invoke-direct {p0, p2, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 101
    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 122
    iget-object v0, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
