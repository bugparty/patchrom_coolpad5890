.class public Lcom/android/gallery3d/c/b;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field private static final NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PicasaSource"

.field private static final qN:I = 0x1

.field private static final qO:I = 0x0

.field private static final qP:I = 0x64

.field public static final qQ:Lcom/android/gallery3d/a/dd;


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;

.field private j:Lcom/android/gallery3d/a/bz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "/picasa/all"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/c/b;->qQ:Lcom/android/gallery3d/a/dd;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "picasa"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/c/b;->i:Lcom/android/gallery3d/app/cl;

    .line 52
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/c/b;->j:Lcom/android/gallery3d/a/bz;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/c/b;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/picasa/all"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/c/b;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/picasa/image"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/c/b;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/picasa/video"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/gallery3d/a/bj;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/gallery3d/a/ax;I)Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public static a(Lcom/android/gallery3d/a/bj;Landroid/media/ExifInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public static b(Lcom/android/gallery3d/a/bj;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Lcom/android/gallery3d/a/bj;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public static d(Lcom/android/gallery3d/a/bj;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static e(Lcom/android/gallery3d/a/bj;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public static f(Lcom/android/gallery3d/a/bj;)J
    .locals 1
    .parameter

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    return-void
.end method

.method public static g(Lcom/android/gallery3d/a/bj;)D
    .locals 1
    .parameter

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static h(Lcom/android/gallery3d/a/bj;)D
    .locals 1
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static i(Lcom/android/gallery3d/a/bj;)I
    .locals 1
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/c/b;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/c/a;

    invoke-static {}, Lcom/android/gallery3d/a/bj;->ex()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/c/a;-><init>(Lcom/android/gallery3d/a/dd;J)V

    return-object v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
