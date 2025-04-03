    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 4;
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
        ;% Auto data (AC_test_P)
        ;%
            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% AC_test_P.PacketOutput_FinalValue
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% AC_test_P.PacketOutput_MaxMissedTicks
                    section.data(2).logicalSrcIdx = 2;
                    section.data(2).dtTransOffset = 4;

                    ;% AC_test_P.PacketOutput_YieldWhenWaiting
                    section.data(3).logicalSrcIdx = 3;
                    section.data(3).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% AC_test_P.PacketOutput_PacketID
                    section.data(1).logicalSrcIdx = 4;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% AC_test_P.FixPtBitwiseOperator1_BitMask
                    section.data(1).logicalSrcIdx = 5;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 68;
            section.data(68)  = dumData; %prealloc

                    ;% AC_test_P.Constant1_Value
                    section.data(1).logicalSrcIdx = 6;
                    section.data(1).dtTransOffset = 0;

                    ;% AC_test_P.DiscreteTimeIntegrator2_gainval
                    section.data(2).logicalSrcIdx = 7;
                    section.data(2).dtTransOffset = 1;

                    ;% AC_test_P.DiscreteTimeIntegrator2_IC
                    section.data(3).logicalSrcIdx = 8;
                    section.data(3).dtTransOffset = 2;

                    ;% AC_test_P.DiscreteTimeIntegrator2_UpperSat
                    section.data(4).logicalSrcIdx = 9;
                    section.data(4).dtTransOffset = 3;

                    ;% AC_test_P.DiscreteTimeIntegrator2_LowerSat
                    section.data(5).logicalSrcIdx = 10;
                    section.data(5).dtTransOffset = 4;

                    ;% AC_test_P.Constant2_Value
                    section.data(6).logicalSrcIdx = 11;
                    section.data(6).dtTransOffset = 5;

                    ;% AC_test_P.DiscreteTimeIntegrator3_gainval
                    section.data(7).logicalSrcIdx = 12;
                    section.data(7).dtTransOffset = 6;

                    ;% AC_test_P.DiscreteTimeIntegrator3_IC
                    section.data(8).logicalSrcIdx = 13;
                    section.data(8).dtTransOffset = 7;

                    ;% AC_test_P.DiscreteTimeIntegrator3_UpperSat
                    section.data(9).logicalSrcIdx = 14;
                    section.data(9).dtTransOffset = 8;

                    ;% AC_test_P.DiscreteTimeIntegrator3_LowerSat
                    section.data(10).logicalSrcIdx = 15;
                    section.data(10).dtTransOffset = 9;

                    ;% AC_test_P.wType_Value
                    section.data(11).logicalSrcIdx = 16;
                    section.data(11).dtTransOffset = 10;

                    ;% AC_test_P.Constant4_Value
                    section.data(12).logicalSrcIdx = 17;
                    section.data(12).dtTransOffset = 11;

                    ;% AC_test_P.Gain_Gain
                    section.data(13).logicalSrcIdx = 18;
                    section.data(13).dtTransOffset = 12;

                    ;% AC_test_P.ClockIntegrator_gainval
                    section.data(14).logicalSrcIdx = 19;
                    section.data(14).dtTransOffset = 13;

                    ;% AC_test_P.ClockIntegrator_IC
                    section.data(15).logicalSrcIdx = 20;
                    section.data(15).dtTransOffset = 14;

                    ;% AC_test_P.freq_Value
                    section.data(16).logicalSrcIdx = 21;
                    section.data(16).dtTransOffset = 15;

                    ;% AC_test_P.Constant_Value
                    section.data(17).logicalSrcIdx = 22;
                    section.data(17).dtTransOffset = 16;

                    ;% AC_test_P.phase_Value
                    section.data(18).logicalSrcIdx = 23;
                    section.data(18).dtTransOffset = 17;

                    ;% AC_test_P.Gain_Gain_e
                    section.data(19).logicalSrcIdx = 24;
                    section.data(19).dtTransOffset = 18;

                    ;% AC_test_P.wType_Value_n
                    section.data(20).logicalSrcIdx = 25;
                    section.data(20).dtTransOffset = 19;

                    ;% AC_test_P.Constant2_Value_d
                    section.data(21).logicalSrcIdx = 26;
                    section.data(21).dtTransOffset = 20;

                    ;% AC_test_P.Gain_Gain_i
                    section.data(22).logicalSrcIdx = 27;
                    section.data(22).dtTransOffset = 21;

                    ;% AC_test_P.freq_Value_f
                    section.data(23).logicalSrcIdx = 28;
                    section.data(23).dtTransOffset = 22;

                    ;% AC_test_P.Constant_Value_a
                    section.data(24).logicalSrcIdx = 29;
                    section.data(24).dtTransOffset = 23;

                    ;% AC_test_P.phase_Value_g
                    section.data(25).logicalSrcIdx = 30;
                    section.data(25).dtTransOffset = 24;

                    ;% AC_test_P.Gain_Gain_l
                    section.data(26).logicalSrcIdx = 31;
                    section.data(26).dtTransOffset = 25;

                    ;% AC_test_P.wType_Value_c
                    section.data(27).logicalSrcIdx = 32;
                    section.data(27).dtTransOffset = 26;

                    ;% AC_test_P.Constant_Value_h
                    section.data(28).logicalSrcIdx = 33;
                    section.data(28).dtTransOffset = 27;

                    ;% AC_test_P.Gain_Gain_h
                    section.data(29).logicalSrcIdx = 34;
                    section.data(29).dtTransOffset = 28;

                    ;% AC_test_P.freq_Value_fj
                    section.data(30).logicalSrcIdx = 35;
                    section.data(30).dtTransOffset = 29;

                    ;% AC_test_P.Constant_Value_e
                    section.data(31).logicalSrcIdx = 36;
                    section.data(31).dtTransOffset = 30;

                    ;% AC_test_P.phase_Value_e
                    section.data(32).logicalSrcIdx = 37;
                    section.data(32).dtTransOffset = 31;

                    ;% AC_test_P.Gain_Gain_eo
                    section.data(33).logicalSrcIdx = 38;
                    section.data(33).dtTransOffset = 32;

                    ;% AC_test_P.wType_Value_b
                    section.data(34).logicalSrcIdx = 39;
                    section.data(34).dtTransOffset = 33;

                    ;% AC_test_P.Constant1_Value_a
                    section.data(35).logicalSrcIdx = 40;
                    section.data(35).dtTransOffset = 34;

                    ;% AC_test_P.Gain_Gain_lj
                    section.data(36).logicalSrcIdx = 41;
                    section.data(36).dtTransOffset = 35;

                    ;% AC_test_P.freq_Value_b
                    section.data(37).logicalSrcIdx = 42;
                    section.data(37).dtTransOffset = 36;

                    ;% AC_test_P.Constant_Value_i
                    section.data(38).logicalSrcIdx = 43;
                    section.data(38).dtTransOffset = 37;

                    ;% AC_test_P.phase_Value_k
                    section.data(39).logicalSrcIdx = 44;
                    section.data(39).dtTransOffset = 38;

                    ;% AC_test_P.Gain_Gain_f
                    section.data(40).logicalSrcIdx = 45;
                    section.data(40).dtTransOffset = 39;

                    ;% AC_test_P.Saturation_UpperSat
                    section.data(41).logicalSrcIdx = 46;
                    section.data(41).dtTransOffset = 40;

                    ;% AC_test_P.Saturation_LowerSat
                    section.data(42).logicalSrcIdx = 47;
                    section.data(42).dtTransOffset = 41;

                    ;% AC_test_P.Gain_Gain_n
                    section.data(43).logicalSrcIdx = 48;
                    section.data(43).dtTransOffset = 42;

                    ;% AC_test_P.pulseDuration_Value
                    section.data(44).logicalSrcIdx = 49;
                    section.data(44).dtTransOffset = 43;

                    ;% AC_test_P.cameraFreq_Value
                    section.data(45).logicalSrcIdx = 50;
                    section.data(45).dtTransOffset = 44;

                    ;% AC_test_P.cameraOn_Value
                    section.data(46).logicalSrcIdx = 51;
                    section.data(46).dtTransOffset = 45;

                    ;% AC_test_P.Constant2_Value_h
                    section.data(47).logicalSrcIdx = 52;
                    section.data(47).dtTransOffset = 46;

                    ;% AC_test_P.Gain_Gain_nv
                    section.data(48).logicalSrcIdx = 53;
                    section.data(48).dtTransOffset = 47;

                    ;% AC_test_P.startSig_Value
                    section.data(49).logicalSrcIdx = 54;
                    section.data(49).dtTransOffset = 48;

                    ;% AC_test_P.Constant3_Value
                    section.data(50).logicalSrcIdx = 55;
                    section.data(50).dtTransOffset = 49;

                    ;% AC_test_P.RampSlope_Value
                    section.data(51).logicalSrcIdx = 56;
                    section.data(51).dtTransOffset = 50;

                    ;% AC_test_P.autoStop_Value
                    section.data(52).logicalSrcIdx = 57;
                    section.data(52).dtTransOffset = 51;

                    ;% AC_test_P.Gain1_Gain
                    section.data(53).logicalSrcIdx = 58;
                    section.data(53).dtTransOffset = 52;

                    ;% AC_test_P.stopSig_Value
                    section.data(54).logicalSrcIdx = 59;
                    section.data(54).dtTransOffset = 53;

                    ;% AC_test_P.Gain_Gain_g
                    section.data(55).logicalSrcIdx = 60;
                    section.data(55).dtTransOffset = 54;

                    ;% AC_test_P.Switch1_Threshold
                    section.data(56).logicalSrcIdx = 61;
                    section.data(56).dtTransOffset = 55;

                    ;% AC_test_P.Gain1_Gain_h
                    section.data(57).logicalSrcIdx = 62;
                    section.data(57).dtTransOffset = 56;

                    ;% AC_test_P.Gain2_Gain
                    section.data(58).logicalSrcIdx = 63;
                    section.data(58).dtTransOffset = 57;

                    ;% AC_test_P.Gain3_Gain
                    section.data(59).logicalSrcIdx = 64;
                    section.data(59).dtTransOffset = 58;

                    ;% AC_test_P.freq_Value_a
                    section.data(60).logicalSrcIdx = 65;
                    section.data(60).dtTransOffset = 59;

                    ;% AC_test_P.Constant_Value_k
                    section.data(61).logicalSrcIdx = 66;
                    section.data(61).dtTransOffset = 60;

                    ;% AC_test_P.phase_Value_o
                    section.data(62).logicalSrcIdx = 67;
                    section.data(62).dtTransOffset = 61;

                    ;% AC_test_P.Gain_Gain_d
                    section.data(63).logicalSrcIdx = 68;
                    section.data(63).dtTransOffset = 62;

                    ;% AC_test_P.amp_Value
                    section.data(64).logicalSrcIdx = 69;
                    section.data(64).dtTransOffset = 63;

                    ;% AC_test_P.Gain_Gain_o
                    section.data(65).logicalSrcIdx = 70;
                    section.data(65).dtTransOffset = 64;

                    ;% AC_test_P.wType_Value_g
                    section.data(66).logicalSrcIdx = 71;
                    section.data(66).dtTransOffset = 65;

                    ;% AC_test_P.amp_Value_c
                    section.data(67).logicalSrcIdx = 72;
                    section.data(67).dtTransOffset = 66;

                    ;% AC_test_P.amp_Value_k
                    section.data(68).logicalSrcIdx = 73;
                    section.data(68).dtTransOffset = 67;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
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
        nTotSects     = 2;
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
        ;% Auto data (AC_test_B)
        ;%
            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% AC_test_B.Switch
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% AC_test_B.Switch1
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% AC_test_B.Switch_m
                    section.data(1).logicalSrcIdx = 3;
                    section.data(1).dtTransOffset = 0;

                    ;% AC_test_B.UDPuint162
                    section.data(2).logicalSrcIdx = 4;
                    section.data(2).dtTransOffset = 1;

                    ;% AC_test_B.UDPuint163
                    section.data(3).logicalSrcIdx = 5;
                    section.data(3).dtTransOffset = 2;

                    ;% AC_test_B.UDPuint164
                    section.data(4).logicalSrcIdx = 6;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
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
        nTotSects     = 6;
        sectIdxOffset = 2;

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
        ;% Auto data (AC_test_DW)
        ;%
            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% AC_test_DW.DiscreteTimeIntegrator2_DSTATE
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% AC_test_DW.DiscreteTimeIntegrator3_DSTATE
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% AC_test_DW.ClockIntegrator_DSTATE
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% AC_test_DW.PacketOutput_PWORK
                    section.data(1).logicalSrcIdx = 3;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% AC_test_DW.sfEvent
                    section.data(1).logicalSrcIdx = 4;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% AC_test_DW.DiscreteTimeIntegrator2_PrevResetState
                    section.data(1).logicalSrcIdx = 5;
                    section.data(1).dtTransOffset = 0;

                    ;% AC_test_DW.DiscreteTimeIntegrator3_PrevResetState
                    section.data(2).logicalSrcIdx = 6;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% AC_test_DW.is_active_c4_AC_test
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% AC_test_DW.doneDoubleBufferReInit
                    section.data(1).logicalSrcIdx = 8;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
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


    targMap.checksum0 = 2555710670;
    targMap.checksum1 = 195407463;
    targMap.checksum2 = 2917689791;
    targMap.checksum3 = 2533432846;

