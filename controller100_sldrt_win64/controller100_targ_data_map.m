    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 11;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (controller100_P)
        ;%
            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_P.mdl
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% controller100_P.PacketInput2_MaxMissedTicks
                    section.data(1).logicalSrcIdx = 3;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_P.PacketOutput_MaxMissedTicks
                    section.data(2).logicalSrcIdx = 4;
                    section.data(2).dtTransOffset = 1;

                    ;% controller100_P.PacketInput2_YieldWhenWaiting
                    section.data(3).logicalSrcIdx = 5;
                    section.data(3).dtTransOffset = 2;

                    ;% controller100_P.PacketOutput_YieldWhenWaiting
                    section.data(4).logicalSrcIdx = 6;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% controller100_P.PacketInput2_PacketID
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_P.PacketOutput_PacketID
                    section.data(2).logicalSrcIdx = 8;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_P.FixPtBitwiseOperator1_BitMask
                    section.data(1).logicalSrcIdx = 9;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 31;
            section.data(31)  = dumData; %prealloc

                    ;% controller100_P.Constant_Value
                    section.data(1).logicalSrcIdx = 10;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_P.Out1_Y0
                    section.data(2).logicalSrcIdx = 11;
                    section.data(2).dtTransOffset = 9;

                    ;% controller100_P.Output_Y0
                    section.data(3).logicalSrcIdx = 12;
                    section.data(3).dtTransOffset = 10;

                    ;% controller100_P.Output1_Y0
                    section.data(4).logicalSrcIdx = 13;
                    section.data(4).dtTransOffset = 11;

                    ;% controller100_P.Output2_Y0
                    section.data(5).logicalSrcIdx = 14;
                    section.data(5).dtTransOffset = 12;

                    ;% controller100_P.UnitDelay_InitialCondition
                    section.data(6).logicalSrcIdx = 15;
                    section.data(6).dtTransOffset = 13;

                    ;% controller100_P.UnitDelay1_InitialCondition
                    section.data(7).logicalSrcIdx = 16;
                    section.data(7).dtTransOffset = 14;

                    ;% controller100_P.Gain1_Gain
                    section.data(8).logicalSrcIdx = 17;
                    section.data(8).dtTransOffset = 15;

                    ;% controller100_P.Constant1_Value
                    section.data(9).logicalSrcIdx = 18;
                    section.data(9).dtTransOffset = 16;

                    ;% controller100_P.Switch18_Threshold
                    section.data(10).logicalSrcIdx = 19;
                    section.data(10).dtTransOffset = 17;

                    ;% controller100_P.Delay_InitialCondition
                    section.data(11).logicalSrcIdx = 20;
                    section.data(11).dtTransOffset = 18;

                    ;% controller100_P.Gain_Gain
                    section.data(12).logicalSrcIdx = 21;
                    section.data(12).dtTransOffset = 27;

                    ;% controller100_P.Switch1_Threshold
                    section.data(13).logicalSrcIdx = 22;
                    section.data(13).dtTransOffset = 28;

                    ;% controller100_P.Gain6_Gain
                    section.data(14).logicalSrcIdx = 23;
                    section.data(14).dtTransOffset = 29;

                    ;% controller100_P.Constant40_Value
                    section.data(15).logicalSrcIdx = 24;
                    section.data(15).dtTransOffset = 30;

                    ;% controller100_P.Switch5_Threshold
                    section.data(16).logicalSrcIdx = 25;
                    section.data(16).dtTransOffset = 33;

                    ;% controller100_P.Delay_InitialCondition_h
                    section.data(17).logicalSrcIdx = 26;
                    section.data(17).dtTransOffset = 34;

                    ;% controller100_P.Gain_Gain_k
                    section.data(18).logicalSrcIdx = 27;
                    section.data(18).dtTransOffset = 37;

                    ;% controller100_P.Switch1_Threshold_e
                    section.data(19).logicalSrcIdx = 28;
                    section.data(19).dtTransOffset = 38;

                    ;% controller100_P.Delay1_InitialCondition
                    section.data(20).logicalSrcIdx = 29;
                    section.data(20).dtTransOffset = 39;

                    ;% controller100_P.Delay1_InitialCondition_e
                    section.data(21).logicalSrcIdx = 30;
                    section.data(21).dtTransOffset = 42;

                    ;% controller100_P.Switch2_Threshold
                    section.data(22).logicalSrcIdx = 31;
                    section.data(22).dtTransOffset = 45;

                    ;% controller100_P.Switch_Threshold
                    section.data(23).logicalSrcIdx = 32;
                    section.data(23).dtTransOffset = 46;

                    ;% controller100_P.Constant_Value_j
                    section.data(24).logicalSrcIdx = 33;
                    section.data(24).dtTransOffset = 47;

                    ;% controller100_P.Saturation_UpperSat
                    section.data(25).logicalSrcIdx = 34;
                    section.data(25).dtTransOffset = 48;

                    ;% controller100_P.Saturation_LowerSat
                    section.data(26).logicalSrcIdx = 35;
                    section.data(26).dtTransOffset = 49;

                    ;% controller100_P.Gain_Gain_i
                    section.data(27).logicalSrcIdx = 36;
                    section.data(27).dtTransOffset = 50;

                    ;% controller100_P.Gain1_Gain_j
                    section.data(28).logicalSrcIdx = 37;
                    section.data(28).dtTransOffset = 51;

                    ;% controller100_P.Gain2_Gain
                    section.data(29).logicalSrcIdx = 38;
                    section.data(29).dtTransOffset = 52;

                    ;% controller100_P.Gain3_Gain
                    section.data(30).logicalSrcIdx = 39;
                    section.data(30).dtTransOffset = 53;

                    ;% controller100_P.ExecutionTime_P1
                    section.data(31).logicalSrcIdx = 40;
                    section.data(31).dtTransOffset = 54;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% controller100_P.constant1_Value
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_P.constant2_Value
                    section.data(2).logicalSrcIdx = 42;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_P.Gain_Gain_f
                    section.data(1).logicalSrcIdx = 43;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% controller100_P.TriggeredSubsystem_d.Out1_Y0
                    section.data(1).logicalSrcIdx = 44;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_P.TriggeredSubsystem_d.Output_Y0
                    section.data(2).logicalSrcIdx = 45;
                    section.data(2).dtTransOffset = 1;

                    ;% controller100_P.TriggeredSubsystem_d.Output1_Y0
                    section.data(3).logicalSrcIdx = 46;
                    section.data(3).dtTransOffset = 2;

                    ;% controller100_P.TriggeredSubsystem_d.Output2_Y0
                    section.data(4).logicalSrcIdx = 47;
                    section.data(4).dtTransOffset = 3;

                    ;% controller100_P.TriggeredSubsystem_d.UnitDelay_InitialCondition
                    section.data(5).logicalSrcIdx = 48;
                    section.data(5).dtTransOffset = 4;

                    ;% controller100_P.TriggeredSubsystem_d.UnitDelay1_InitialCondition
                    section.data(6).logicalSrcIdx = 49;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_P.IfActionSubsystem1_i.Constant_Value
                    section.data(1).logicalSrcIdx = 50;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(9) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% controller100_P.TriggeredSubsystem.Out1_Y0
                    section.data(1).logicalSrcIdx = 51;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_P.TriggeredSubsystem.Output_Y0
                    section.data(2).logicalSrcIdx = 52;
                    section.data(2).dtTransOffset = 1;

                    ;% controller100_P.TriggeredSubsystem.Output1_Y0
                    section.data(3).logicalSrcIdx = 53;
                    section.data(3).dtTransOffset = 2;

                    ;% controller100_P.TriggeredSubsystem.Output2_Y0
                    section.data(4).logicalSrcIdx = 54;
                    section.data(4).dtTransOffset = 3;

                    ;% controller100_P.TriggeredSubsystem.UnitDelay_InitialCondition
                    section.data(5).logicalSrcIdx = 55;
                    section.data(5).dtTransOffset = 4;

                    ;% controller100_P.TriggeredSubsystem.UnitDelay1_InitialCondition
                    section.data(6).logicalSrcIdx = 56;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_P.IfActionSubsystem1.Constant_Value
                    section.data(1).logicalSrcIdx = 57;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(11) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 7;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (controller100_B)
        ;%
            section.nData     = 18;
            section.data(18)  = dumData; %prealloc

                    ;% controller100_B.dataready
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_B.PacketInput2_o2
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 4;

                    ;% controller100_B.PacketInput2_o3
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 10;

                    ;% controller100_B.DataTypeConversion1
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 32;

                    ;% controller100_B.Reshape1
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 38;

                    ;% controller100_B.p_raw
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 41;

                    ;% controller100_B.DigitalFilter
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 44;

                    ;% controller100_B.p_raw_i
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 47;

                    ;% controller100_B.Gain
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 50;

                    ;% controller100_B.Merge
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 53;

                    ;% controller100_B.p_dot
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 56;

                    ;% controller100_B.p_dotdot
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 59;

                    ;% controller100_B.ExecutionTime
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 62;

                    ;% controller100_B.R
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 63;

                    ;% controller100_B.UnitDelay
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 72;

                    ;% controller100_B.In2
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 81;

                    ;% controller100_B.UnitDelay1
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 82;

                    ;% controller100_B.R_i
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 83;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% controller100_B.UDPuint162
                    section.data(1).logicalSrcIdx = 18;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_B.UDPuint163
                    section.data(2).logicalSrcIdx = 19;
                    section.data(2).dtTransOffset = 1;

                    ;% controller100_B.UDPuint164
                    section.data(3).logicalSrcIdx = 20;
                    section.data(3).dtTransOffset = 2;

                    ;% controller100_B.Switch
                    section.data(4).logicalSrcIdx = 21;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_B.Gain_p
                    section.data(1).logicalSrcIdx = 22;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_B.sf_RotationMatrix3.w
                    section.data(1).logicalSrcIdx = 23;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_B.sf_RotationMatrix2.w
                    section.data(1).logicalSrcIdx = 24;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% controller100_B.TriggeredSubsystem_d.In1
                    section.data(1).logicalSrcIdx = 25;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_B.TriggeredSubsystem_d.UnitDelay
                    section.data(2).logicalSrcIdx = 26;
                    section.data(2).dtTransOffset = 3;

                    ;% controller100_B.TriggeredSubsystem_d.In2
                    section.data(3).logicalSrcIdx = 27;
                    section.data(3).dtTransOffset = 6;

                    ;% controller100_B.TriggeredSubsystem_d.UnitDelay1
                    section.data(4).logicalSrcIdx = 28;
                    section.data(4).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% controller100_B.TriggeredSubsystem.In1
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_B.TriggeredSubsystem.UnitDelay
                    section.data(2).logicalSrcIdx = 30;
                    section.data(2).dtTransOffset = 3;

                    ;% controller100_B.TriggeredSubsystem.In2
                    section.data(3).logicalSrcIdx = 31;
                    section.data(3).dtTransOffset = 6;

                    ;% controller100_B.TriggeredSubsystem.UnitDelay1
                    section.data(4).logicalSrcIdx = 32;
                    section.data(4).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            sigMap.sections(7) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 20;
        sectIdxOffset = 7;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (controller100_DW)
        ;%
            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% controller100_DW.Delay_DSTATE
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_DW.DigitalFilter_FILT_STATES
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 9;

                    ;% controller100_DW.Delay_DSTATE_d
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 15;

                    ;% controller100_DW.Delay1_DSTATE
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 18;

                    ;% controller100_DW.Delay1_DSTATE_m
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 21;

                    ;% controller100_DW.UnitDelay_DSTATE
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 24;

                    ;% controller100_DW.UnitDelay1_DSTATE
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 33;

                    ;% controller100_DW.DigitalFilter_TEMP_STATES
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 34;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 12;
            section.data(12)  = dumData; %prealloc

                    ;% controller100_DW.PacketInput2_PWORK
                    section.data(1).logicalSrcIdx = 8;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_DW.Eul_XYZ_PWORK.LoggedData
                    section.data(2).logicalSrcIdx = 9;
                    section.data(2).dtTransOffset = 1;

                    ;% controller100_DW.omega_b_PWORK.LoggedData
                    section.data(3).logicalSrcIdx = 10;
                    section.data(3).dtTransOffset = 2;

                    ;% controller100_DW.p_dot_PWORK.LoggedData
                    section.data(4).logicalSrcIdx = 11;
                    section.data(4).dtTransOffset = 4;

                    ;% controller100_DW.p_dotdot_PWORK.LoggedData
                    section.data(5).logicalSrcIdx = 12;
                    section.data(5).dtTransOffset = 5;

                    ;% controller100_DW.p_raw_PWORK.LoggedData
                    section.data(6).logicalSrcIdx = 13;
                    section.data(6).dtTransOffset = 6;

                    ;% controller100_DW.p_raw1_PWORK.LoggedData
                    section.data(7).logicalSrcIdx = 14;
                    section.data(7).dtTransOffset = 7;

                    ;% controller100_DW.Scope_PWORK.LoggedData
                    section.data(8).logicalSrcIdx = 15;
                    section.data(8).dtTransOffset = 9;

                    ;% controller100_DW.Vicon2bodiesdataready_PWORK.LoggedData
                    section.data(9).logicalSrcIdx = 16;
                    section.data(9).dtTransOffset = 11;

                    ;% controller100_DW.Vicon2bodiesdataready1_PWORK.LoggedData
                    section.data(10).logicalSrcIdx = 17;
                    section.data(10).dtTransOffset = 12;

                    ;% controller100_DW.PacketOutput_PWORK
                    section.data(11).logicalSrcIdx = 18;
                    section.data(11).dtTransOffset = 13;

                    ;% controller100_DW.highexecutiontime_PWORK.LoggedData
                    section.data(12).logicalSrcIdx = 19;
                    section.data(12).dtTransOffset = 15;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sfEvent
                    section.data(1).logicalSrcIdx = 20;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% controller100_DW.TriggeredSubsystem_SubsysRanBC
                    section.data(1).logicalSrcIdx = 21;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_DW.IfActionSubsystem_SubsysRanBC
                    section.data(2).logicalSrcIdx = 22;
                    section.data(2).dtTransOffset = 1;

                    ;% controller100_DW.IfActionSubsystem1_SubsysRanBC
                    section.data(3).logicalSrcIdx = 23;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.is_active_c64_controller100
                    section.data(1).logicalSrcIdx = 24;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.doneDoubleBufferReInit
                    section.data(1).logicalSrcIdx = 25;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sf_RotationMatrix3.sfEvent
                    section.data(1).logicalSrcIdx = 26;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sf_RotationMatrix3.is_active_c1_controller100
                    section.data(1).logicalSrcIdx = 27;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sf_RotationMatrix3.doneDoubleBufferReInit
                    section.data(1).logicalSrcIdx = 28;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sf_RotationMatrix2.sfEvent
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sf_RotationMatrix2.is_active_c1_controller100
                    section.data(1).logicalSrcIdx = 30;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.sf_RotationMatrix2.doneDoubleBufferReInit
                    section.data(1).logicalSrcIdx = 31;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% controller100_DW.TriggeredSubsystem_d.UnitDelay_DSTATE
                    section.data(1).logicalSrcIdx = 32;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_DW.TriggeredSubsystem_d.UnitDelay1_DSTATE
                    section.data(2).logicalSrcIdx = 33;
                    section.data(2).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.TriggeredSubsystem_d.TriggeredSubsystem_SubsysRanBC
                    section.data(1).logicalSrcIdx = 34;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.IfActionSubsystem_m.IfActionSubsystem_SubsysRanBC
                    section.data(1).logicalSrcIdx = 35;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.IfActionSubsystem1_i.IfActionSubsystem1_SubsysRanBC
                    section.data(1).logicalSrcIdx = 36;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% controller100_DW.TriggeredSubsystem.UnitDelay_DSTATE
                    section.data(1).logicalSrcIdx = 37;
                    section.data(1).dtTransOffset = 0;

                    ;% controller100_DW.TriggeredSubsystem.UnitDelay1_DSTATE
                    section.data(2).logicalSrcIdx = 38;
                    section.data(2).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(17) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.TriggeredSubsystem.TriggeredSubsystem_SubsysRanBC
                    section.data(1).logicalSrcIdx = 39;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(18) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.IfActionSubsystem.IfActionSubsystem_SubsysRanBC
                    section.data(1).logicalSrcIdx = 40;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(19) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% controller100_DW.IfActionSubsystem1.IfActionSubsystem1_SubsysRanBC
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(20) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 1433670460;
    targMap.checksum1 = 1939112266;
    targMap.checksum2 = 2495444818;
    targMap.checksum3 = 1505666873;

