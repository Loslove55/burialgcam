.class public final synthetic Lfcv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lfcx;


# direct methods
.method public constructor <init>(Lfcx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcv;->a:Lfcx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfcv;->a:Lfcx;

    invoke-virtual {v0}, Lfcx;->a()V

    return-void
.end method
