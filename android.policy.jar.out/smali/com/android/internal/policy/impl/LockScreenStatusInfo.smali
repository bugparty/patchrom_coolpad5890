.class public interface abstract Lcom/android/internal/policy/impl/LockScreenStatusInfo;
.super Ljava/lang/Object;
.source "LockScreenStatusInfo.java"


# static fields
.field public static final ONTOUCH_NORMAL_UNCLOCK:I = 0x1

.field public static final ONTOUCH_NO_HANDLE:I = 0x0

.field public static final ONTRIGGER_BROWSER:I = 0x9

.field public static final ONTRIGGER_CALENDAR:I = 0x7

.field public static final ONTRIGGER_CAMERA:I = 0x3

.field public static final ONTRIGGER_COOL_VOICE:I = 0x8

.field public static final ONTRIGGER_EMAIL:I = 0x6

.field public static final ONTRIGGER_INCOMING_CALL:I = 0x4

.field public static final ONTRIGGER_MESSAGE:I = 0x5

.field public static final ONTRIGGER_NORMAL_UNCLOCK:I = 0x2


# virtual methods
.method public abstract goDistanceUnLockScreen(I)V
.end method

.method public abstract goTargetUnLockScreen(I)V
.end method

.method public abstract pokeWake()V
.end method

.method public abstract pokeWake(I)V
.end method

.method public abstract sendBroadCastStatuBar(Z)V
.end method
