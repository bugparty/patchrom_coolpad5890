.class public Lcom/android/gallery3d/photoeditor/filters/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final cx:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/filters/a;->cx:Ljava/lang/Class;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 2
    .parameter

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/a;->cx:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/filters/a;->a(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v0

    return-object v0
.end method

.method public n(I)[Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/a;->cx:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/photoeditor/filters/Filter;

    check-cast v0, [Lcom/android/gallery3d/photoeditor/filters/Filter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/filters/a;->n(I)[Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v0

    return-object v0
.end method
