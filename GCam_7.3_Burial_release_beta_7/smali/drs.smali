.class final synthetic Ldrs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ldto;


# direct methods
.method public constructor <init>(Ldto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrs;->a:Ldto;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldrs;->a:Ldto;

    invoke-virtual {v0}, Ldtl;->a()V

    return-void
.end method
