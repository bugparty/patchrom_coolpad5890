.class public Lcom/android/gallery3d/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/by;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpContext"

.field public static final px:Ljava/lang/String; = "Imported"


# instance fields
.field private mContext:Landroid/content/Context;

.field private py:Lcom/android/gallery3d/a/aa;

.field private pz:Lcom/android/gallery3d/a/bs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/a/ap;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/gallery3d/a/aa;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/ap;->py:Lcom/android/gallery3d/a/aa;

    .line 71
    new-instance v0, Lcom/android/gallery3d/a/bs;

    iget-object v1, p0, Lcom/android/gallery3d/a/ap;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/bs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/ap;->pz:Lcom/android/gallery3d/a/bs;

    .line 72
    return-void
.end method

.method private G()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/a/ap;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method private aj(I)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/a/ap;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method


# virtual methods
.method public a(Landroid/mtp/MtpDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/gallery3d/a/ap;->G()V

    .line 85
    const v0, 0x7f0d009a

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ap;->aj(I)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->hasSpaceForSize(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/io/File;

    const-string v2, "Imported"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/a/ap;->pz:Lcom/android/gallery3d/a/bs;

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/gallery3d/a/bs;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/a/ap;->py:Lcom/android/gallery3d/a/aa;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/aa;->h(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    const-string v0, "MtpContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No space to import "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " whose size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 126
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 129
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpObjectInfo;

    .line 130
    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/android/gallery3d/b/y;->hasSpaceForSize(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 134
    iget-object v6, p0, Lcom/android/gallery3d/a/ap;->pz:Lcom/android/gallery3d/a/bs;

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    invoke-virtual {v6, p1, v0, v5}, Lcom/android/gallery3d/a/bs;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/a/ap;->py:Lcom/android/gallery3d/a/aa;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/aa;->h(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public b(Landroid/mtp/MtpDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/gallery3d/a/ap;->G()V

    .line 90
    const v0, 0x7f0d009b

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ap;->aj(I)V

    .line 91
    return-void
.end method

.method public dm()Lcom/android/gallery3d/a/bs;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/a/ap;->pz:Lcom/android/gallery3d/a/bs;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/a/ap;->pz:Lcom/android/gallery3d/a/bs;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/bs;->b(Lcom/android/gallery3d/a/by;)V

    .line 76
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/a/ap;->pz:Lcom/android/gallery3d/a/bs;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/bs;->a(Lcom/android/gallery3d/a/by;)V

    .line 80
    invoke-direct {p0}, Lcom/android/gallery3d/a/ap;->G()V

    .line 81
    return-void
.end method
