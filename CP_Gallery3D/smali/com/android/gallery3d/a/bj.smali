.class public abstract Lcom/android/gallery3d/a/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaObject"

.field public static final vA:I = 0x0

.field public static final vB:I = 0x1

.field public static final vC:I = 0x2

.field public static final vD:I = 0x0

.field public static final vE:I = 0x1

.field public static final vF:I = 0x2

.field public static final vG:I = 0x3

.field private static vH:J = 0x0L

.field public static final vi:J = -0x1L

.field public static final vj:I = 0x1

.field public static final vk:I = 0x2

.field public static final vl:I = 0x4

.field public static final vm:I = 0x8

.field public static final vn:I = 0x10

.field public static final vo:I = 0x20

.field public static final vp:I = 0x40

.field public static final vq:I = 0x80

.field public static final vr:I = 0x100

.field public static final vs:I = 0x200

.field public static final vt:I = 0x400

.field public static final vu:I = 0x800

.field public static final vv:I = 0x1000

.field public static final vw:I = -0x1

.field public static final vx:I = 0x1

.field public static final vy:I = 0x6

.field public static final vz:I = 0x8


# instance fields
.field protected final uj:Lcom/android/gallery3d/a/dd;

.field protected vI:J

.field protected vJ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/a/bj;->vH:J

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/a/dd;->j(Lcom/android/gallery3d/a/bj;)V

    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    .line 71
    iput-wide p2, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 72
    return-void
.end method

.method public static declared-synchronized ex()J
    .locals 6

    .prologue
    .line 139
    const-class v1, Lcom/android/gallery3d/a/bj;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/gallery3d/a/bj;->vH:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/gallery3d/a/bj;->vH:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public E(I)V
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public am()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public ap()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/gallery3d/a/cw;

    invoke-direct {v0}, Lcom/android/gallery3d/a/cw;-><init>()V

    .line 115
    return-object v0
.end method

.method public au(I)V
    .locals 1
    .parameter

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bW()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->vJ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public db()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public el()Z
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public es()Lcom/android/gallery3d/a/dd;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    return-object v0
.end method

.method public et()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public eu()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public ev()I
    .locals 1

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ew()J
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
