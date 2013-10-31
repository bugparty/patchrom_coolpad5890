.class public Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
.super Ljava/lang/Object;
.source "AppPermissionBean.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:J

.field private allowed:I

.field private appName:Ljava/lang/String;

.field private appType:I

.field private endTime:J

.field private isUpdateFlag:I

.field private permName:Ljava/lang/String;

.field private permType:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private proType:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;

    invoke-direct {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "pl"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->readFromPacel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->clone()Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowed()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->endTime:J

    return-wide v0
.end method

.method public getIsUpdateFlag()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->isUpdateFlag:I

    return v0
.end method

.method public getPermName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    return v0
.end method

.method public get_id()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    return-wide v0
.end method

.method public readFromPacel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    .line 180
    return-void
.end method

.method public setAllowed(I)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 145
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    .line 146
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setAppType(I)V
    .locals 0
    .parameter "appType"

    .prologue
    .line 73
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    .line 74
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->endTime:J

    .line 58
    return-void
.end method

.method public setIsUpdateFlag(I)V
    .locals 0
    .parameter "isUpdateFlag"

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->isUpdateFlag:I

    .line 66
    return-void
.end method

.method public setPermName(Ljava/lang/String;)V
    .locals 0
    .parameter "permName"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPermType(Ljava/lang/String;)V
    .locals 0
    .parameter "permType"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setProType(Ljava/lang/String;)V
    .locals 0
    .parameter "proType"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 121
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    .line 122
    return-void
.end method

.method public set_id(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "arg1"

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
